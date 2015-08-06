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

	visit_conjunction(e: BINARY_OP)
	do
	end

	visit_difference(e: BINARY_OP)
	do
	end

	visit_disjunction(e: BINARY_OP)
	do
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
	do
	end

	visit_intersection(e: BINARY_OP)
	do
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
	do
	end

	visit_union(e: BINARY_OP)
	do
	end

	visit_set_enumeration (e : SET_ENUMERATION)
	do

	end

	visit_null_expression (e  : NULL_EXPRESSION)
	do
	end

end
