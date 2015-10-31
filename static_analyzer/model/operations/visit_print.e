note
	description: "Summary description for {VISIT_PRINT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_PRINT

inherit
	VISIT_EXPRESSION
create make

feature -- Constructor
	make
	do
		create {NULL_EXPRESSION}left_child.make
		create {NULL_EXPRESSION}right_child.make
		create value.make_empty
		create symbol.make
	end
feature -- Attributes
	left_child : EXPRESSION
	right_child :EXPRESSION
feature{NONE} -- Internal
	symbol : TERMINAL_SYMBOL


feature -- Give the evaluated expression
    visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
		value.make_from_string (e.output)
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
		value.make_from_string (e.output)
	end

	visit_addition(e: BINARY_OP)
	do
		visit_binary_op(e)

	end

	visit_conjunction(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_difference(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_disjunction(e: BINARY_OP)
	do
		visit_binary_op(e)
	end
	visit_division(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_equality(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_greater_than(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_implication(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_intersection(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_less_than(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_multiplication(e: BINARY_OP)
	do
		visit_binary_op(e)
	end



	visit_subtraction(e: BINARY_OP)
	do
		visit_binary_op(e)
	end



	visit_union(e: BINARY_OP)
	do
		visit_binary_op(e)
	end

	visit_sum(e: UNARY_OP)
	do
		visit_unary_op(e)
	end

	visit_negation(e: UNARY_OP)
	do
		visit_unary_op(e)
	end

	visit_negative(e: UNARY_OP)
	do
		visit_unary_op(e)
	end

	visit_generalized_and(e: UNARY_OP)
	do
		visit_unary_op(e)
	end

	visit_generalized_or(e: UNARY_OP)
	do
		visit_unary_op(e)
	end

	visit_set_enumeration (e : SET_ENUMERATION)

	local
			eval: VISIT_PRINT
	do
		create eval.make
		value.make_from_string (symbol.lbrace)
		from
			e.start
		until
			e.after
		loop

        e.item.accept(eval)
		value.append (eval.value)

		if not e.is_last then
			value.append (symbol.comma)
		end

		e.forth

		end
		value.append (symbol.rbrace)


	end

	visit_null_expression (e  : NULL_EXPRESSION)

	do
		value.make_from_string (get_symbol (e))
	end

feature{NONE} -- Internal Attributes
	visit_binary_op (e : BINARY_OP)
	local
		eval : VISIT_PRINT
	do
		create eval.make
		value.make_empty
		value.append (symbol.lparen)
		e.left.accept (eval)
		value.append (eval.value)
		value.append (get_symbol(e))
		e.right.accept (eval)
		value.append (eval.value)
		value.append (symbol.rparen)
	end

	visit_unary_op (e : UNARY_OP)
	local
		eval : VISIT_PRINT
	do
		create eval.make
		value.make_empty
		value.append (symbol.lparen)
		value.append (get_symbol (e))
		e.child.accept (eval)
		value.append (eval.value)
		value.append (symbol.rparen)
	end
end
