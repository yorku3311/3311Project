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
		type_check := false
		is_divisor_by_zero := false
	end
feature
	type_check : BOOLEAN
	is_divisor_by_zero : BOOLEAN
	set_enum_list : ARRAYED_LIST[STRING]
	type_int :INTEGER  = 1
	type_bool : INTEGER = 2
	type_mix : INTEGER = 0
	type_set_enum : BOOLEAN
	type_flag : INTEGER

feature -- Give the evaluated expression
    visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
		value := e.output
		type_flag := type_bool
		type_check := true
		type_set_enum := false
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
		value := e.output
		type_flag := type_int
		type_check := true
		type_set_enum := false
	end

	visit_addition(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)

		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_int
		end

	end

	visit_division(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			if right_visit_type_check.value.to_integer = 0 then
				is_divisor_by_zero := true
			end
			type_check := true
			type_flag := type_int
		end
	end

	visit_conjunction(e: BINARY_OP) -- N
	local
		left_visit_type_check: VISIT_TYPE_CHECK
		right_visit_type_check: VISIT_TYPE_CHECK

	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_bool) and (right_visit_type_check.type_flag = type_bool) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_bool
		end

	end

	visit_difference(e: BINARY_OP)
	local
		left_visit_type_check: VISIT_TYPE_CHECK
		right_visit_type_check: VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = right_visit_type_check.type_flag)
			and (left_visit_type_check.type_set_enum and right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := left_visit_type_check.type_flag
		end
	end


	visit_disjunction(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_bool) and (right_visit_type_check.type_flag = type_bool) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_bool
		end
	end



	visit_equality(e: BINARY_OP)
	local
		left_visit_type_check: VISIT_TYPE_CHECK
		right_visit_type_check: VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		if (left_visit_type_check.type_flag = right_visit_type_check.type_flag)
		 and (left_visit_type_check.type_set_enum = right_visit_type_check.type_set_enum) then

		end
		type_check := true
		type_flag := type_mix
	end

	visit_generalized_and(e: UNARY_OP)
	local
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		if (visit_type_check.type_flag = type_bool) and visit_type_check.type_set_enum then
			type_flag := type_bool
			type_check := true
		end

	end

	visit_generalized_or(e: UNARY_OP)
	local
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		if (visit_type_check.type_flag = type_bool) and visit_type_check.type_set_enum then
			type_flag := type_bool
			type_check := true
		end

	end

	visit_greater_than(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum)   then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_bool
		end
	end

	visit_implication(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_bool) and (right_visit_type_check.type_flag = type_bool)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_bool
		end
	end

	visit_intersection(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if left_visit_type_check.type_flag = right_visit_type_check.type_flag
			and ( left_visit_type_check.type_set_enum) and (right_visit_type_check.type_set_enum) then
			type_flag :=left_visit_type_check.type_flag
			type_check := true
		else
			type_flag := type_mix
		end

	end

	visit_less_than(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum)   then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_bool
		end
	end

	visit_multiplication(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_int
		end
	end

	visit_negation(e: UNARY_OP)
	local
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		if (visit_type_check.type_flag = type_bool) then
			type_check := true
			type_flag := type_bool
		end
	end

	visit_negative(e: UNARY_OP)
	local
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)

		if (visit_type_check.type_flag = type_int) then
			type_check := true
			type_flag := type_int
		end
	end

	visit_subtraction(e: BINARY_OP)
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if (left_visit_type_check.type_flag = type_int) and (right_visit_type_check.type_flag = type_int)
			and (not left_visit_type_check.type_set_enum) and (not right_visit_type_check.type_set_enum) then
			is_divisor_by_zero := left_visit_type_check.is_divisor_by_zero or
			right_visit_type_check.is_divisor_by_zero
			type_check := true
			type_flag := type_int
		end
	end

	visit_sum(e: UNARY_OP)
	local
		visit_type_check : VISIT_TYPE_CHECK
	do
		create visit_type_check.make
		e.child.accept (visit_type_check)
		if (visit_type_check.type_flag = type_int) and (visit_type_check.type_set_enum) then
			type_check := true
			type_flag := type_int
		end
	end

	visit_union(e: BINARY_OP) -- N
	local
		left_visit_type_check : VISIT_TYPE_CHECK
		right_visit_type_check : VISIT_TYPE_CHECK
	do
		create left_visit_type_check.make
		create right_visit_type_check.make
		e.left.accept (left_visit_type_check)
		e.right.accept (right_visit_type_check)
		if left_visit_type_check.type_flag = right_visit_type_check.type_flag and (left_visit_type_check.type_set_enum)
			and (right_visit_type_check.type_set_enum)  then
			type_flag := left_visit_type_check.type_flag
		else
			type_flag := type_mix
		end
		type_check := true
	end


	visit_set_enumeration (e : SET_ENUMERATION)
	local
		eval : VISIT_TYPE_CHECK
	do
		create eval.make
		from
			e.start
			e.item.accept(eval)
		    type_flag := eval.type_flag
		    type_set_enum := eval.type_set_enum
		until
			e.after
		loop
			-- if the first one is boolean, check to see if all the other ones are boolean
			e.item.accept(eval)
		    if not (eval.type_flag = type_flag)
		    	or not (type_set_enum = eval.type_set_enum) then
				type_flag := type_mix
				type_check := false
		    else
		    	type_check := true
		    end
			e.forth


		end
		type_set_enum := true
	end

	visit_null_expression (e  : NULL_EXPRESSION)
	do
	end

end
