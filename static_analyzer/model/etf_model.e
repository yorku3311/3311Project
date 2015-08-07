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
			create my_stack.make(0)
			is_new := true
			set_message (status_initialized)
		end

feature -- Attributes
	report : STRING
	message :STRING
	evaluate_expression : VISIT_EVALUATE
	print_expression : VISIT_PRINT
	type_check_expression : VISIT_TYPE_CHECK
	is_new : BOOLEAN
	my_stack : ARRAYED_LIST [INTEGER]
	-- used to ensure user does not try to close a currently open set which is empty
	is_new_set : BOOLEAN
	set_enum_count : INTEGER

feature{NONE} -- Internal Attributes
	myexpression : EXPRESSION
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
	status_expression_cannot_be_reset : STRING
		attribute Result := "Error (Initial expression cannot be reset)." end
	status_enumeration_not_being_specified : STRING
		attribute Result := "Error (Set enumeration is not being specified)." end
	status_enum_must_not_be_empty :STRING
		attribute Result := "Error: (Set enumeration must be non-empty)." end
	status_type_correct : STRING
		attribute Result := "Error (Expression is not type-correct)." end
feature -- Set operations
	set_message (e : STRING)
	do
		message := e
	end

feature -- basic operations
	pretty_print
	do
		report.make_empty
		myexpression.accept(print_expression)
		report.append (print_expression.value)
	end

	evaluate
	do
		type_check
		report.make_empty
		if not type_check_expression.type_check then
			set_message(status_type_correct)
			report.append (print_expression.value)
		elseif type_check_expression.is_divisor_by_zero then
			set_message (status_divisor_zero)
			report.append (print_expression.value)
		else
			myexpression.accept(evaluate_expression)
		    report.append (evaluate_expression.value)
		    set_message (status_ok)
		end
	end
	type_check
	do
		myexpression.accept(type_check_expression)
		report.make_empty
		report.append (print_expression.value)
		if type_check_expression.type_check then
			set_message (status_ok)
		else
			set_message (status_type_correct)
		end
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
	end

	add_division
		-- add binary operation 'division'
	do
		add_binary_operation(create {DIVIDES})

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
		add_unary_operation(create {OPERAND_SUM})
	end

	add_generalized_and
	do
		add_unary_operation(create {FORALL})
	end
	add_generalized_or
	do
		add_unary_operation(create {EXISTS})
	end

feature -- Primitive Type Expressions
	add_integer_constant (i : INTEGER)
		-- add an integer constant
	do
		create integer_constant.make
		integer_constant.set_integer_constant(i)
		if is_new then
			myexpression := integer_constant.deep_twin
			is_new := false
		else
			myexpression.add (integer_constant)
		end

		if is_new_set then
			is_new_set := false
		end

		if not (peek = expression_at_set_enumeration) then
			pop
		end

		set_message (status_ok)
	end

	add_boolean_constant (b : BOOLEAN)
		-- add boolean constant
	do
		create boolean_constant
		boolean_constant.set_boolean_constant(b)
		if is_new then
			myexpression := boolean_constant.deep_twin
			is_new := false
		else
			myexpression.add (boolean_constant)
		end

		if is_new_set then
			is_new_set := false
		end

		if not (peek = expression_at_set_enumeration) then
			pop
		end

		set_message (status_ok)
	end


	reset
			-- Reset model state.
		do
			make
			is_new := true
		end
feature -- Enumeration operations
	start_set_enumeration
	do
		create set_enum.make
		-- this will need to be updated
		set_enum.set_expression_state (1)
		set_enum.add_operation (create {DUMMY})
		if is_new then
			myexpression := set_enum.deep_twin
			is_new := false
		else
			myexpression.add (set_enum)
		end

		is_new_set := true

		pop
		push (expression_at_set_enumeration)
		set_enum_count := set_enum_count + 1
		set_message (status_ok)

	end
	end_set_enumeration
	do
		myexpression.end_set_enumeration
		pop_set_enumeration
		set_message (status_ok)
		set_enum_count := set_enum_count - 1
	end

feature{NONE} -- Auxillary Commands
	-- add binary operation
	add_binary_operation (e : TERMINAL_SYMBOL)
	do
		-- create a new binary operation and add it to the list of operations.
		create binary_op.make
		binary_op.add_operation (e)
		if is_new then
			myexpression := binary_op.deep_twin
			is_new := false
		else
			myexpression.add (binary_op)
		end

		if is_new_set then
			is_new_set := false
		end

		pop
		push(expresssion_is_extended)
		push(expresssion_is_extended)
		set_message (status_ok)
	end


	add_unary_operation(e: TERMINAL_SYMBOL)
	do
		create unary_op.make
		unary_op.add_operation(e)
		if is_new then
			myexpression := unary_op.deep_twin
			is_new := false
		else
			myexpression.add (unary_op)
		end

		if is_new_set then
			is_new_set := false
		end
		pop
		push(expresssion_is_extended)
		my_stack.extend (1)
		set_message (status_ok)
	end

feature{NONE} -- Stack Operations
    expression_at_set_enumeration : INTEGER = 2
	expresssion_is_extended : INTEGER = 1
	pop
	do
		if not my_stack.is_empty and not (peek = expression_at_set_enumeration) then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
		end
	end

	push ( i : INTEGER)
	do
		my_stack.extend (i)
	end

	peek : INTEGER
	do
		if not my_stack.is_empty then
			Result := my_stack.at (my_stack.count)
		else
			Result := 0
		end
	end

	pop_set_enumeration
	do
		if not my_stack.is_empty  then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
		end
	end

feature -- Queries
	out : STRING
		do
			create Result.make_from_string ("  ")
			Result.append ("Expression currently specified: ")
			Result.append (report)
			Result.append ("%N")
			Result.append ("  ")
			Result.append ("Report: ")
			Result.append (message)

		end




end




