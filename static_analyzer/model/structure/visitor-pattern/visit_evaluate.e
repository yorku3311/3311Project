note
	description: "Summary description for {VISIT_EVALUATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_EVALUATE

inherit
	VISIT_EXPRESSION
create make

feature -- Constructor
	make
	do
		create {NULL_EXPRESSION}left_child.make
		create {NULL_EXPRESSION}right_child.make
		create value.make_empty
	end

feature{NONE} -- Internal Attributes
	left_child : EXPRESSION
	right_child : EXPRESSION

feature -- Give the evaluated expression
	visit_addition(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do

		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
	    e.right.accept(visit_evaluate)
		i := i + visit_evaluate.value.to_integer
		value := i.out
	end

	visit_subtraction(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
		e.right.accept(visit_evaluate)
		i := i - visit_evaluate.value.to_integer
		value := i.out
	end

	visit_multiplication(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_integer
			e.right.accept(visit_evaluate)
			i := i * visit_evaluate.value.to_integer
			value := i.out
	end
-- you can do subtraction...
-- so first e.left is just an expression
-- e.right
-- when you do e.left.accept(eval)
-- you are calling Visit_evaluate again
-- keeps doing this until it treaches an integer constant
-- then returns the integer value
	visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
		value := e.output
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
		value := e.output
	end

	visit_conjunction(e: BINARY_OP)

		local
			i : BOOLEAN

			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_boolean
			e.right.accept(visit_evaluate)
			i := i and visit_evaluate.value.to_boolean
			value := i.out
	end



	visit_difference(e: BINARY_OP)
	do
	end

	visit_disjunction(e: BINARY_OP)
	local
			i : BOOLEAN

			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_boolean
			e.right.accept(visit_evaluate)
			i := i or visit_evaluate.value.to_boolean
			value := i.out
	end


	visit_division(e: BINARY_OP)
	local
			i : INTEGER
			j: DOUBLE
			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_integer
			e.right.accept(visit_evaluate)
			j := (i / visit_evaluate.value.to_integer)
			i := j.floor
			value := i.out
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
	local
			i : BOOLEAN

			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_boolean
			e.right.accept(visit_evaluate)
			i := i implies visit_evaluate.value.to_boolean
			value := i.out
	end


	visit_intersection(e: BINARY_OP)
	do
	end

	visit_less_than(e: BINARY_OP) -- edit this !!!!
	local
			i : INTEGER

			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_boolean
			e.right.accept(visit_evaluate)
			i := i and visit_evaluate.value.to_boolean
			value := i.out
	end


	visit_negation(e: UNARY_OP)
	do
	end

	visit_negative(e: UNARY_OP)
	do
	end

	visit_sum(e: UNARY_OP)
	do
	end

	visit_union(e: BINARY_OP)
	do
	end


end
