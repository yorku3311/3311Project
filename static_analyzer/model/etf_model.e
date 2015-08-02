note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			--Strings, message specifies the current state.
			create report.make_empty
			create message.make_empty

			create myexpression.make
			create integer_constant.make
			create binary_op.make
			create boolean_constant.make
			create unary_op.make
			create set_enum.make

		end

feature -- Attributes
	report : STRING
	message :STRING

feature{NONE} -- Internal Attributes
	myexpression : COMPOSITE_EXPRESSION
	binary_op : BINARY_OP
	integer_constant : INTEGER_CONSTANT
	boolean_constant : BOOLEAN_CONSTANT
	unary_op : UNARY_OP
	set_enum : SET_ENUMERATION
	first_set : BOOLEAN

feature -- Error Reporting
	status_ok : STRING
		attribute Result := "OK" end


feature -- basic operations
	pretty_print
	do
		report.make_empty
		report.append (myexpression.accept (create {VISIT_PRINT}))
	end

	evaluate
	do
		message.make_empty
		message.append (myexpression.accept (create {VISIT_EVALUATE}))
	end
	type_check
	do
		report.make_empty
		report.append (myexpression.accept (create {VISIT_TYPE_CHECK}))
	end
feature -- Binary operations
	-- BINARY ARITHMATIC
		-- TO DO: addition, division
	add_multiplication
		-- add binary operation 'multiplication'
	do
		add_binary_operation(create {TIMES})
		message := status_ok
	end

	add_division
		-- add binary operation 'division'
	do
		add_binary_operation(create {DIVIDE})
	end

    -- binary logical operations
    	-- TO DO : conjunction, disjunction, implication


    -- binary relational operations
    	-- TO DO: equality, greater than, less than

    -- binary set operations
    	-- TO DO : union, intersect, difference
feature -- Unary operations
	--arithmatic
		-- TO DO : negative

	--logical
		-- TO DO: Negation

	--composite
		-- TO DO : sum, generalized and, generalized or
feature -- Enumeration operations
	-- TO DO : start set enumeration, end set enumeration

feature -- Terminal Symbols Addition Command
	add_integer_constant (i : INTEGER)
		-- add an integer constant
	do
		create integer_constant.make
		integer_constant.set_integer_constant(i)
		myexpression.add (integer_constant)

		-- type_integer := true
	end

	add_boolean_constant (b : BOOLEAN)
		-- add boolean constant
	do
		create boolean_constant.make
		boolean_constant.set_boolean_constant(b)
		myexpression.add (boolean_constant)
	end

	default_update
			-- Perform update to the model state.
		do

		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- Queries
	out : STRING
		do
			create Result.make_from_string ("  ")
			Result.append ("Expression currently specified: ")
			pretty_print
			Result.append (report)
			Result.append ("%N")
			Result.append ("  ")
			Result.append ("Report: ")
			Result.append (message)
		end

feature{NONE} -- Auxillary Commands
	-- add binary operation
	add_binary_operation (e : EXPRESSION)
	do
		-- create a new binary operation and add it to the list of operations.
		create binary_op.make
		binary_op.add_operation (e)
		myexpression.add (binary_op)
	end






end




