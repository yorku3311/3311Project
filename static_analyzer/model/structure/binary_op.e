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
		add_operation,accept,make,add
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
		create {DUMMY}operator
	end
feature{NONE} -- Attributes
	times : TIMES
	divide : DIVIDES -- how can you call e.left? when left feature is in binary_op class
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
feature -- External Attributes Accessible
	operator : TERMINAL_SYMBOL
feature -- Expression type
	expression_type : INTEGER
	arithmatic : INTEGER = 1
	logical_boolean : INTEGER = 2
	logical_arithmatic : INTEGER = 3
	binary_set_operation : INTEGER = 4


feature -- Commands
	add (expression : EXPRESSION)
		--extend to the first 'NULL_EXPRESSION' that is found
	local
		is_set :BOOLEAN
	do
		expression_list.go_i_th (0)
	from
		expression_list.forth
	until
		is_set or expression_list.after
	loop
			if attached {NULL_EXPRESSION}expression_list.item as c then
				if c.is_current then
					expression_list.put_i_th (expression,expression_list.index)
					is_set := true
				end
				-- update the next 'NULL_EXPRESSION'
			elseif attached {COMPOSITE_EXPRESSION}expression_list.item as b then
				b.add(expression)
			end
			expression_list.forth

		end
		is_set := set_first_null
	end


feature -- Commands to set the status of this expression type
	set_expression_type (i :INTEGER)
	do
		expression_type := i
	end

feature -- Query Children
	left : EXPRESSION
	do
		Result := expression_list.at(1)
	end

	right : EXPRESSION
	do
		Result := expression_list.at (2)
	end


feature -- Command
	add_operation(op : TERMINAL_SYMBOL)
		do
			-- LPAREN Expression Operator Expression RPAREN
			expression_list.put_i_th(create {NULL_EXPRESSION}.make_first,1)
			expression_list.extend(create {NULL_EXPRESSION}.make)
			operator := op.deep_twin
		end
	output : STRING
	do
		Result := ""
	end


feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		if operator.output ~ times.output then
			visitor.visit_multiplication (Current.deep_twin)
		elseif operator.output ~ divide.output then
			visitor.visit_division (Current.deep_twin)
		elseif operator.output ~ plus.output then
			visitor.visit_addition (Current.deep_twin)
		elseif operator.output ~ minus.output then
			visitor.visit_subtraction (Current.deep_twin)
		elseif operator.output ~ op_and.output then
			visitor.visit_conjunction (Current.deep_twin)
		elseif operator.output ~ op_or.output then
			visitor.visit_disjunction (Current.deep_twin)
		elseif operator.output ~ op_equals.output then
			visitor.visit_equality (Current.deep_twin)
		elseif operator.output ~ op_implies.output then
			visitor.visit_implication (Current.deep_twin)
		elseif operator.output ~ op_lt.output then
			visitor.visit_less_than (Current.deep_twin)
		elseif operator.output ~ op_gt.output then
			visitor.visit_greater_than (Current.deep_twin)
		elseif operator.output ~ op_union.output then
			visitor.visit_conjunction (Current.deep_twin)
		elseif operator.output ~ op_intersect.output then
			visitor.visit_disjunction (Current.deep_twin)
		elseif operator.output ~ op_difference.output then
			visitor.visit_difference (Current.deep_twin)
		end

	end

end

