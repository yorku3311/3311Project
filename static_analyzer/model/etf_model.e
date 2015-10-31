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
			create integer_constant.make
			create binary_op.make
			create boolean_constant.make
			create unary_op.make
			create set_enum.make_empty
			create evaluate_expression.make
			create print_expression.make
			create type_check_expression.make
			create my_stack.make(0)
			is_new := true
			set_message (status_initialized)
			create null_expression.make_first
			create master_expression.make_empty

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
	is_divisor_zero : BOOLEAN
	master_expression : MASTER_EXPRESSION

feature{NONE} -- Internal Attributes
	myexpression : EXPRESSION
	do
		Result := master_expression.get_expression
	end
	binary_op : BINARY_OP
	integer_constant : INTEGER_CONSTANT
	boolean_constant : BOOLEAN_CONSTANT
	unary_op : UNARY_OP
	set_enum : SET_ENUMERATION
	first_set : BOOLEAN
	null_expression : NULL_EXPRESSION



feature -- Error Reporting
	status_ok : STRING
		attribute Result := "OK." end
	status_initialized: STRING
		attribute Result := "Expression is initialized." end
	status_incomplete_exp: STRING
		attribute Result := "Error (Expression is not yet fully specified)." end
	status_completed_exp: STRING
		attribute Result := "Error (Expression is already fully specified)." end
	status_divisor_zero: STRING
	    attribute Result := "Error (Divisor is zero)." end
	status_expression_cannot_be_reset : STRING
		attribute Result := "Error (Initial expression cannot be reset)." end
	status_enumeration_not_being_specified : STRING
		attribute Result := "Error (Set enumeration is not being specified)." end
	status_enum_must_not_be_empty :STRING
		attribute Result := "Error: (Set enumeration must be non-empty)." end
	status_not_type_correct_evaluate : STRING
		attribute Result := "Error (Expression is not type-correct)." end
	status_is_type_correct : STRING
		attribute Result := " is type-correct." end
	status_is_not_type_correct : STRING
		attribute Result := " is not type-correct." end
feature -- Set operations
	set_message (e : STRING)
	do
		message.make_empty
		message.append (e)
	end

	is_type_correct : BOOLEAN
	do
		myexpression.accept (type_check_expression)
		Result := type_check_expression.type_check
	end

feature -- basic operations
	pretty_print
	do
		report.make_empty
		myexpression.accept(print_expression)
		report.append (print_expression.value)
	end

	evaluate
	require
		no_expression_on_stack and is_type_correct and not is_divisor_zero
	do

		report.make_empty
		myexpression.accept(evaluate_expression)
		message.make_empty
	    report.append (print_expression.value)
	    message.append (evaluate_expression.value)

	end

	type_check
	require
		no_expression_on_stack
	do
		myexpression.accept(type_check_expression)
		report.make_empty
		report.append (print_expression.value)

		message.make_empty
		message.append (print_expression.value)
		message.append (status_is_type_correct)
		is_divisor_zero := type_check_expression.is_divisor_by_zero
	end

feature -- Binary operations
	-- BINARY ARITHMATIC
	add_addition
	do
		create binary_op.make_add
		add_binary_operation
	end

	add_subtraction
	do
		create binary_op.make_subtract
		add_binary_operation
	end
	add_multiplication
		-- add binary operation 'multiplication'
	do
		create binary_op.make_times
		add_binary_operation
	end

	add_division
		-- add binary operation 'division'
	do
		create binary_op.make_divides
		add_binary_operation

	end

    -- binary logical operations

    add_conjunction
    do
    	create binary_op.make_and
		add_binary_operation

    end

    add_disjunction
    do
    	create binary_op.make_or
		add_binary_operation
    end

    add_implication
    do
       create binary_op.make_implies
		add_binary_operation
    end

    add_equality
    -- binary relational
    do
    	create binary_op.make_equal
		add_binary_operation
    end

    add_greater_than
    -- binary relational
    do
    	 create binary_op.make_gt
		add_binary_operation
    end

    add_less_than
    -- binary relational
    do
    	create binary_op.make_lt
		add_binary_operation
    end

    add_union
    -- binary set op
    do
    	create binary_op.make_union
		add_binary_operation
    end

    add_intersection
    -- binary set op
    do
    	create binary_op.make_intersect
		add_binary_operation
    end

    add_difference
    -- binary set op
    do
    	create binary_op.make_difference
		add_binary_operation
    end
feature -- Unary operations

	add_negative
	--arithmatic
	do
		create unary_op.make_negative
		add_unary_operation
	end

	add_negation
	--logical
	do
		create unary_op.make_negation
		add_unary_operation
	end

	add_sum
	--composite
	do
		create unary_op.make_sum
		add_unary_operation
	end

	add_generalized_and
	do
		create unary_op.make_forall
		add_unary_operation
	end
	add_generalized_or
	do
		create unary_op.make_exists
		add_unary_operation
	end

feature -- Primitive Type Expressions
	add_integer_constant (i : INTEGER)
	require
		not expression_fully_specified
	do
		create integer_constant.make
		integer_constant.set_integer_constant(i)
		if is_new then
			master_expression.make (integer_constant)
			is_new := false
		else
			master_expression.add (integer_constant)
		end

		if is_new_set then
			is_new_set := false
		end

		if not (peek = expression_at_set_enumeration) then
			pop
		end

		set_message (status_ok)
	ensure
		message.is_equal (status_ok)
	end

	add_boolean_constant (b : BOOLEAN)
	require
		not expression_fully_specified
	do
		create boolean_constant.make
		boolean_constant.set_boolean_constant(b)
		if is_new then
			master_expression.make (boolean_constant)
			is_new := false
		else
			master_expression.add (boolean_constant)
		end

		if is_new_set then
			is_new_set := false
		end

		if not (peek = expression_at_set_enumeration) then
			pop
		end

		set_message (status_ok)
	ensure
		message.is_equal (status_ok)
	end


	reset
		-- Reset model state.
	require
		not is_newly_initialized
	do
		make
		is_new := true
		set_message(status_ok)
	ensure
		message.is_equal (status_ok)
	end

feature -- Enumeration operations
	start_set_enumeration
	require
		not expression_fully_specified
	do
		create set_enum.make_empty


		--set_enum.set_expression_state (expresssion_is_extended)

		if is_new then
			master_expression.make (set_enum)
			is_new := false
		else
			master_expression.add (set_enum)
		end

		is_new_set := true

		pop
		push (expression_at_set_enumeration)
		set_enum_count := set_enum_count + 1
		set_message (status_ok)

	ensure
		message.is_equal (status_ok)
	end

	end_set_enumeration
	require
		not expression_fully_specified and is_set_enum_being_specified and not is_set_enum_empty
	do
		if attached {COMPOSITE_EXPRESSION}myexpression as comp_exp then
			--comp_exp.end_set_enumeration
			pop_set_enumeration
			set_message (status_ok)
			set_enum_count := set_enum_count - 1
		end
	ensure
		message.is_equal (status_ok)
	end

feature{NONE} -- Auxillary Commands
	-- add binary operation
	add_binary_operation
	require
		not expression_fully_specified
	do
		-- create a new binary operation and add it to the list of operations.
		if is_new then
			master_expression.make (binary_op.deep_twin)
			is_new := false
		else
			master_expression.add(binary_op.deep_twin)
		end

		if is_new_set then
			is_new_set := false
		end

		pop
		push(expresssion_is_extended)
		push(expresssion_is_extended)
		set_message (status_ok)
	ensure
		message.is_equal (status_ok)
	end


	add_unary_operation
	require
		not expression_fully_specified
	do

		if is_new then
			master_expression.make (unary_op.deep_twin)
			is_new := false
		else
			master_expression.add(unary_op.deep_twin)
		end

		if is_new_set then
			is_new_set := false
		end
		pop
		push(expresssion_is_extended)
		set_message (status_ok)
	ensure
		message.is_equal (status_ok)
	end

feature  -- Error Booleans
	no_expression_on_stack : BOOLEAN
	do
		Result := my_stack.is_empty
	end

	expression_fully_specified : BOOLEAN
	do
		Result := my_stack.is_empty and not is_new
	end

	is_set_enum_being_specified : BOOLEAN
	do
		Result := not (set_enum_count = 0)
	end

	is_set_enum_empty : BOOLEAN
	do
		Result := is_new_set
	end

	is_newly_initialized : BOOLEAN
	do
		Result := is_new
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
			if is_new then
				report.make_empty
				--report := "?"
				report.append ("?")
			end
			Result.append (report)
			Result.append ("%N")
			Result.append ("  ")
			Result.append ("Report: ")
			Result.append (message)

		end




end




