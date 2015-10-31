note
	description: "Summary description for {VISIT_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VISIT_EXPRESSION
feature -- Attributes
	value :STRING


feature
	get_symbol (e : EXPRESSION): STRING
	-- returns the 'symbol' of the current expression
	local
		symbol : TERMINAL_SYMBOL

	do
		create symbol.make
		create Result.make_empty
		if e.type_add ~ e.get_expression_type then
			Result := symbol.plus
		elseif e.type_and ~ e.get_expression_type then
			Result := symbol.conjunction
		elseif e.type_boolean_constant ~ e.get_expression_type then
			if attached {BOOLEAN_CONSTANT}e as bool_const  then
				Result := bool_const.output
			end
		elseif e.type_difference ~ e.get_expression_type then
			Result := symbol.difference
		elseif e.type_divides ~ e.get_expression_type then
			Result := symbol.divides
		elseif e.type_equal ~ e.get_expression_type then
			Result := symbol.op_equal
		elseif e.type_exists ~ e.get_expression_type then
			Result := symbol.exists
		elseif e.type_forall ~ e.get_expression_type then
			Result := symbol.forall
		elseif e.type_gt ~ e.get_expression_type then
			Result := symbol.op_gt
		elseif e.type_implies ~ e.get_expression_type then
			Result := symbol.op_implies
		elseif e.type_integer_constant ~ e.get_expression_type then
			if attached {INTEGER_CONSTANT}e as int_const then
				Result := int_const.output
			end
		elseif e.type_intersect ~ e.get_expression_type then
			Result := symbol.intersect
		elseif e.type_lt ~ e.get_expression_type then
			Result := symbol.op_lt
		elseif e.type_negation ~ e.get_expression_type then
			Result := symbol.negation
		elseif e.type_negative ~ e.get_expression_type then
			Result := symbol.negative
		elseif e.type_or ~ e.get_expression_type then
			Result := symbol.op_or
		--elseif e.type_set ~ e.get_expression_type then
		--	Result := symbol.

		elseif e.type_subtract ~ e.get_expression_type then
			Result := symbol.minus
		elseif e.type_sum ~ e.get_expression_type then
			Result := symbol.sum
		elseif e.type_times ~ e.get_expression_type then
			Result := symbol.times
		elseif e.type_union ~ e.get_expression_type then
			Result := symbol.union

		elseif e.type_null_first ~ e.get_expression_type   then
			Result := symbol.null_first
		elseif e.type_null_remaining ~ e.get_expression_type then
			Result := symbol.null_remaining
		end
	end
	visit_boolean_constant(e: BOOLEAN_CONSTANT)
	deferred
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	deferred
	end

	visit_addition(e: BINARY_OP)
	deferred
	end

	visit_conjunction(e: BINARY_OP)
	deferred
	end

	visit_difference(e: BINARY_OP)
	deferred
	end

	visit_disjunction(e: BINARY_OP)
	deferred
	end

	visit_division(e: BINARY_OP)
	deferred
	end

	visit_equality(e: BINARY_OP)
	deferred
	end

	visit_generalized_and(e: UNARY_OP)
	deferred
	end

	visit_generalized_or(e: UNARY_OP)
	deferred
	end

	visit_greater_than(e: BINARY_OP)
	deferred
	end

	visit_implication(e: BINARY_OP)
	deferred
	end

	visit_intersection(e: BINARY_OP)
	deferred
	end

	visit_less_than(e: BINARY_OP)
	deferred
	end

	visit_multiplication(e: BINARY_OP)
	deferred
	end

	visit_negation(e: UNARY_OP)
	deferred
	end

	visit_negative(e: UNARY_OP)
	deferred
	end

	visit_subtraction(e: BINARY_OP)
	deferred
	end

	visit_sum(e: UNARY_OP)
	deferred
	end

	visit_union(e: BINARY_OP)
	deferred
	end

	visit_set_enumeration (e : SET_ENUMERATION)
	deferred

	end

	visit_null_expression (e  : NULL_EXPRESSION)
	deferred
	end

end
