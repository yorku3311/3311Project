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
			create report.make_empty
			create myexpression.make
			create integer_constant.make
			create binary_op.make
			create boolean_constant.make
			create unary_op.make
			create set_enum.make
		end

feature -- Attributes
	report : STRING
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
feature -- Update
	update_structure
	do
		-- This here should be internal
		first_set := myexpression.set_first_null
		report.make_empty
		report.append ("%N")
		report.append (myexpression.output)
		report.append ("%N")
		report.append (status_ok)
	end

feature{NONE} -- Auxillary Commands
	add_binary_operation (e : EXPRESSION)
	do
		create binary_op.make
		binary_op.add_operation (e)
		myexpression.add (binary_op)
		update_structure
	end



feature -- binary operations
	add_multiplication
		-- add binary operation 'multiplication'
	do
		add_binary_operation(create {TIMES})
	end

	add_division
		-- add binary operation 'division'
	do
		add_binary_operation(create {DIVIDE})
	end
feature -- Terminal Symbols
	add_integer_constant (i : INTEGER)
		-- add an integer constant
	do
		create integer_constant.make
		integer_constant.add_integer_constant(i)
		myexpression.add (integer_constant)
		update_structure
		-- type_integer := true
	end

	add_boolean_constant (b : BOOLEAN)
		-- add an integer constant
	do
		create boolean_constant.make
		boolean_constant.add_boolean_constant(b)
		myexpression.add (boolean_constant)
		update_structure
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

feature -- queries
	out : STRING
		do
			create Result.make_from_string ("  ")
			Result.append ("System State: default model state ")
			Result.append ("(")
			Result.append (")")
			Result.append (report)
		end

end




