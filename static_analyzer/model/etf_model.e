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
		end

feature -- Attributes
	report : STRING
	message :STRING
	evaluate_expression : VISIT_EVALUATE
	print_expression : VISIT_PRINT
	type_check_expression : VISIT_TYPE_CHECK
	is_new : BOOLEAN
	my_stack : ARRAYED_LIST [INTEGER]

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
		attribute Result := "Error (Initial expression cannot be reset)" end
feature -- Set operations
	set_message (e : STRING)
	do
		message := e
	end

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
		myexpression.accept(evaluate_expression)
		d := evaluate_expression.value
		report.make_empty
		report.append (d)
	end
	type_check
	local
		d : STRING
	do
		myexpression.accept(type_check_expression)
		d := type_check_expression.value
		report.make_empty
		report.append (d)
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
feature -- Enumeration operations
	-- TO DO : start set enumeration, end set enumeration
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
		my_stack.extend (1)
		set_message (status_ok)

	end
	end_set_enumeration
	do
		myexpression.end_set_enumeration
		set_message (status_ok)
	end

feature -- Terminal Symbols Addition Command
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
		if not my_stack.is_empty then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
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
		if not my_stack.is_empty then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
		end
		set_message (status_ok)
	end


	reset
			-- Reset model state.
		do
			make
			is_new := true
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
		if not my_stack.is_empty then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
		end
		my_stack.extend (1)
		my_stack.extend (1)
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
	if not my_stack.is_empty then
			my_stack.go_i_th (my_stack.count)
			my_stack.remove
	end
	my_stack.extend (1)
	set_message (status_ok)

end



end




