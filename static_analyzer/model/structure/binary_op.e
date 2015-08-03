note
	description: "Summary description for {BINARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BINARY_OP

inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, evaluate,accept,make
	end
create
	make
feature -- Constructors
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		create times create divide create plus create minus create op_and
		create op_or create op_equals create op_implies create op_lt create op_gt
		create op_union create op_intersect create op_difference
	end
feature{NONE} -- Attributes
	times : TIMES
	divide : DIVIDES
	plus : PLUS
	minus : MINUS
	op_and :OPERAND_AND
	op_or : OPERAND_OR
	op_equals : OPERATOR_EQUAL
	op_implies : OPERATOR_IMPLIES
	op_lt : OPERATOR_LT
	op_gt : OPERATOR_GT
	op_union : UNION
	op_intersect : INTERSECT
	op_difference : DIFFERENCE
feature{NONE} -- Expression type
	expression_type : INTEGER
	arithmatic : INTEGER = 1
	logical : INTEGER = 2

feature -- Commands to set the status of this expression type
	set_expression_type (i :INTEGER)
	do
		expression_type := i
	end


feature -- Command
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Expression Operator Expression RPAREN
			expression_list.put_i_th (create {LPAREN},1)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make)
			expression_list.extend (create {RPAREN})
		end
	evaluate :STRING
	local
		exp_1 : INTEGER
		exp_2 : INTEGER
		exp_1_bool : BOOLEAN
		exp_2_bool : BOOLEAN
		i : INTEGER
		b : BOOLEAN
		operator_type : STRING
	do
		create operator_type.make_from_string (expression_list.at (3).output)
		inspect expression_type
		when arithmatic then
			exp_1 := expression_list.at (2).evaluate.to_integer
			exp_2 := expression_list.at (4).evaluate.to_integer
		when logical then
			exp_1_bool := expression_list.at (2).evaluate.to_boolean
			exp_2_bool := expression_list.at (4).evaluate.to_boolean
		end

		if operator_type ~ times.output then
			i := exp_1 * exp_2
		elseif operator_type ~ divide.output then
			--i := {INTEGER}(exp_1 * exp_2)
		elseif operator_type ~ plus.output then
			i := exp_1 + exp_2
		elseif operator_type ~ minus.output then
			i := exp_1 - exp_2
		end
		if operator_type ~ op_or.output then
			b := exp_1_bool or exp_2_bool
		elseif operator_type ~ op_equals.output then
			b := exp_1_bool = exp_2_bool
		elseif operator_type ~ op_implies.output then
			b := exp_1_bool implies exp_2_bool
		elseif operator_type ~ op_lt.output then
			b := exp_1 <  exp_2
		elseif operator_type ~ op_gt.output then
			b := exp_1 >  exp_2
		elseif operator_type ~ op_union.output then

		elseif operator_type ~ op_intersect.output then

		elseif operator_type ~ op_difference.output then

		end

		inspect expression_type
		when arithmatic then
			Result := i.out
		else
			Result := b.out
		end
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
