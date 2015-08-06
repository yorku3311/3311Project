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

			create {NULL_EXPRESSION}myexpression.make_first
			create integer_constant.make
			create binary_op.make
			create boolean_constant
			create unary_op.make
			create set_enum.make
			create evaluate_expression.make
			create print_expression.make
			create type_check_expression.make

		end

feature -- Attributes
	report : STRING
	message :STRING
	evaluate_expression : VISIT_EVALUATE
	print_expression : VISIT_PRINT
	type_check_expression : VISIT_TYPE_CHECK

feature{NONE} -- Internal Attributes
	myexpression : COMPOSITE_EXPRESSION
	is_new : BOOLEAN
	binary_op : BINARY_OP
	integer_constant : INTEGER_CONSTANT
	boolean_constant : BOOLEAN_CONSTANT
	unary_op : UNARY_OP
	set_enum : SET_ENUMERATION
	first_set : BOOLEAN

feature -- Error Reporting
	status_ok : STRING
		attribute Result := "OK" end
	status_initialized: STRING
		attribute Result := "Expression is initialized" end
	status_incomplete_exp: STRING
		attribute Result := "Error (Expression is not fully specified)." end
	status_completed_exp: STRING
		attribute Result := "Error (Expression is already fully specified)." end
	status_divisor_zero: STRING
	    attribute Result := "Divisor is zero" end


feature -- basic operations
	pretty_print
	local
		d : STRING
	do
		myexpression.accept(print_expression)
		d := print_expression.value
		report.make_empty
		report.append (d)
	end

	evaluate
	local
		d : STRING
	do
		message.make_empty
	--	message.append (myexpression.accept (create {VISIT_EVALUATE}))
		--myexpression.accept (evaluate_expression)
		--d := evaluate_expression.value
	end
	type_check
	do
		report.make_empty
		--report.append (myexpression.accept (create {VISIT_TYPE_CHECK}))
	end
feature -- Binary operations
	-- BINARY ARITHMATIC
	add_addition
	do
		add_binary_operation(create {PLUS})
	end

	add_subtraction
	do
		add_binary_operation(create {MINUS})
	end
	add_multiplication
		-- add binary operation 'multiplication'
	do
		add_binary_operation(create {TIMES})
		message := status_ok
	end

	add_division
		-- add binary operation 'division'
	do
		add_binary_operation(create {DIVIDES})
		message := status_ok

	end

    -- binary logical operations

    add_conjunction
    do
    	add_binary_operation(create {OPERAND_AND})

    end

    add_disjunction
    do
    	add_binary_operation(create {OPERAND_OR})
    end

    add_implication
    do
       add_binary_operation(create {OPERATOR_IMPLIES})
    end

-- binary relational

    add_equality
    do
    	add_binary_operation(create {OPERATOR_EQUAL})
    end

    add_greater_than
    do
    	 add_binary_operation(create {OPERATOR_GT})
    end

    add_less_than
    do
    	add_binary_operation(create {OPERATOR_LT})
    end

-- binary set op
    add_union
    do
    	add_binary_operation(create {UNION})
    end

    add_intersection
    do
    	add_binary_operation(create {INTERSECT})
    end

    add_difference
    do
    	add_binary_operation(create {DIFFERENCE})
    end
feature -- Unary operations
	--arithmatic

	add_negative
	do
		add_unary_operation(create {NEGATIVE})
	end

	--logical

	add_negation
	do
		add_unary_operation(create {NEGATION})
	end

	--composite


	add_sum
	do
		add_unary_operation(create {SUM})
	end

	add_generalized_and
	do
		add_unary_operation(create {FORALL})
	end
	add_generalized_or
	do
		add_unary_operation(create {EXISTS})
	end
feature -- Enumeration operations
	-- TO DO : start set enumeration, end set enumeration
	start_set_enumeration
	do
		create set_enum.make
		-- this will need to be updated
		set_enum.set_expression_state (1)
		set_enum.add_operation (create {NULL_EXPRESSION}.make_first)
		myexpression.add (set_enum)

	end
	end_set_enumeration
	do
		myexpression.end_set_enumeration
	end

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
		create boolean_constant
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
		if not is_new then
			myexpression := binary_op.deep_twin
			is_new := true
		else
			myexpression.add (binary_op)
		end
	end


add_unary_operation(e: EXPRESSION)
do
	create unary_op.make
	unary_op.add_operation(e)
	myexpression.add (unary_op)
end



end




