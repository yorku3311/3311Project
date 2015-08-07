note
	description: "Summary description for {VISIT_TYPE_CHECK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_TYPE_CHECK

inherit
	VISIT_EXPRESSION
create make

feature -- Constructor
	make
	do
		create value.make_empty
		create set_enum_list.make (0)
		type_check := true
		is_divisor_by_zero := false
	end
feature
	type_check : BOOLEAN
	is_divisor_by_zero : BOOLEAN
	set_enum_list : ARRAYED_LIST[STRING]
	type_int :INTEGER  = 1
	type_bool : INTEGER = 2
	type_mix : INTEGER = 0
	type_flag : INTEGER

feature -- Give the evaluated expression
    visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
		value := e.output
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
		value := e.output
	end

	visit_addition(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
		end
	end

	visit_division(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
			if right_visit_type_check.value.to_integer = 0 then
				is_divisor_by_zero := true
			else
				is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
				right_visit_type_check.is_divisor_by_zero
			end
			type_check := true
		end
	end

	visit_conjunction(e: BINARY_OP) -- N
	local
		b: BOOLEAN
		left_visit_type_check: VISIT_TYPE_CHECK
		right_visit_type_check: VISIT_TYPE_CHECK

	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b:= left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and right_visit_type_check.value.is_boolean
		value := b.out

		if b then
			type_check := true
		else
			type_check := false
		end
	end

	visit_difference(e: BINARY_OP) -- N
	local
		left_eval_type_check : VISIT_TYPE_CHECK
		right_eval_type_check : VISIT_TYPE_CHECK
		left_bool :BOOLEAN
		left_int: BOOLEAN
		right_bool:BOOLEAN
		right_int: BOOLEAN
	do
		create left_eval_type_check.make
		create right_eval_type_check.make
		e.left.accept (left_eval_type_check)
		left_bool := left_eval_type_check.value.is_boolean
		e.right.accept (right_eval_type_check)
		right_bool := right_eval_type_check.value.is_boolean
		left_int := left_eval_type_check.value.is_integer
		right_int := right_eval_type_check.value.is_integer
		if (left_bool = right_bool) or (left_int = right_int)  then
			type_check := true

			else
				type_check := false
		end
		value := type_check.out
	end


	visit_disjunction(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b:= left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and right_visit_type_check.value.is_boolean
		value := b.out

		if b then
			type_check := true
		else
			type_check := false
		end
	end



	visit_equality(e: BINARY_OP)
	do
	end

	visit_generalized_and(e: UNARY_OP)
	local
		b : BOOLEAN
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		b := visit_type_check.type_check
		value := b.out
		if b  then
			type_check := true
		end

	end

	visit_generalized_or(e: UNARY_OP)
	local
		b : BOOLEAN
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		b := visit_type_check.type_check
		value := b.out
		if b  then
			type_check := true
		end

	end

	visit_greater_than(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
		end
	end

	visit_implication(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
		end
	end

	visit_intersection(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		b := (left_visit_type_check.type_flag  /= left_visit_type_check.type_mix)
	end

	visit_less_than(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
		end
	end

	visit_multiplication(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
				is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
				right_visit_type_check.is_divisor_by_zero
				type_check := true
		end
	end

	visit_negation(e: UNARY_OP)
	local
		b : BOOLEAN
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		b := visit_type_check.value.is_boolean
		value := b.out
		if b then
				is_divisor_by_zero := visit_type_check.is_divisor_by_zero
				type_check := true
		end
	end

	visit_negative(e: UNARY_OP)
	local
		b : BOOLEAN
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		b := not visit_type_check.value.is_boolean
		value := b.out
		if b then
			is_divisor_by_zero := visit_type_check.is_divisor_by_zero
			type_check := true
		end
	end

	visit_subtraction(e: BINARY_OP)
	local
		b : BOOLEAN
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		b := not left_visit_type_check.value.is_boolean
		e.right.accept (right_visit_type_check)
		b := b and (not right_visit_type_check.value.is_boolean)
		value := b.out
		if b then
				is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
				right_visit_type_check.is_divisor_by_zero
				type_check := true
		end
	end

	visit_sum(e: UNARY_OP)
	local
		eval_type_check : VISIT_TYPE_CHECK
	do
		create eval_type_check.make
		e.child.accept (eval_type_check)
		if eval_type_check.type_flag = eval_type_check.type_int then
			type_check := true
			value := type_check.out
		end
	end

	visit_union(e: BINARY_OP) -- N
	local
		left_eval_type_check : VISIT_TYPE_CHECK
		right_eval_type_check : VISIT_TYPE_CHECK
		left_bool :BOOLEAN
		left_int: BOOLEAN
		right_bool:BOOLEAN
		right_int: BOOLEAN
	do
		create left_eval_type_check.make
		create right_eval_type_check.make
		e.left.accept (left_eval_type_check)
		left_bool := left_eval_type_check.value.is_boolean
		e.right.accept (right_eval_type_check)
		right_bool := right_eval_type_check.value.is_boolean
		left_int := left_eval_type_check.value.is_integer
		right_int := right_eval_type_check.value.is_integer
		if (left_bool = right_bool) or (left_int = right_int)  then
			type_check := true

			else
				type_check := false
		end
		value := type_check.out
	end


	visit_set_enumeration (e : SET_ENUMERATION)
	local
		eval: VISIT_PRINT
		symbol : TERMINAL_SYMBOL
		b : BOOLEAN
	do
		create eval.make
		create {LPAREN}symbol
		value.append (symbol.output)
		type_check := true
		from
			e.start
			e.item.accept(eval)
		    b := eval.value.is_boolean
		    if b then
		    	type_flag := type_bool
		    else
		    	type_flag := type_int
		    end
		until
			e.after
		loop
			-- if the first one is boolean, check to see if all the other ones are boolean
			e.item.accept(eval)
		    b := eval.value.is_boolean
			if (type_check = type_bool) and b then
				-- do nothing
			elseif (type_check = type_int) and b then
				type_check := false
				type_flag := type_mix
			end
			e.forth

		end
		create {RPAREN}symbol
		value.append (symbol.output)
	end

	visit_null_expression (e  : NULL_EXPRESSION)
	do
	end

end
