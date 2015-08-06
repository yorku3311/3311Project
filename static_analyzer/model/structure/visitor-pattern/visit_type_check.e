note
	description: "Summary description for {VISIT_TYPE_CHECK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_TYPE_CHECK

inherit
	VISIT_EXPRESSION
feature -- Give the evaluated expression
visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
	end

	visit_addition(e: BINARY_OP)
	do
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

	visit_division(e: BINARY_OP)
	do
	end

	visit_equality(e: BINARY_OP)
	do
	end

	visit_generalized_and(e: UNARY_OP)
	do
	end

	visit_generalized_or(e: UNARY_OP)
	do
	end

	visit_greater_than(e: BINARY_OP)
	do
	end

	visit_implication(e: BINARY_OP)
	do
	end

	visit_intersection(e: BINARY_OP)
	do
	end

	visit_less_than(e: BINARY_OP)
	do
	end

	visit_multiplication(e: BINARY_OP)
	do
	end

	visit_negation(e: UNARY_OP)
	do
	end

	visit_negative(e: UNARY_OP)
	do
	end

	visit_subtraction(e: BINARY_OP)
	do
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

end
