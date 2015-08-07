note
	description: "Summary description for {UNARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNARY_OP

inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, accept,make
	end
create
	make
feature -- Constructor
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		create negative create negation create sum create for_all create exists
		create {NULL_EXPRESSION}child.make
		create {DUMMY}operator
	end
feature{NONE} -- Internal attributes
	negative : NEGATIVE
	negation : NEGATION
	sum      : SUM
	for_all  : FORALL
	exists   : EXISTS
feature -- Attributes
	operator : TERMINAL_SYMBOL
	child    : EXPRESSION

feature -- Commands
	add_operation(op : TERMINAL_SYMBOL)
		do
			-- LPAREN Operator Expression RPAREN
			--expression_list.extend(op)
			expression_list.put_i_th(create {NULL_EXPRESSION}.make_first,1)
			operator := op
		end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		if operator.output ~ negative.output then
			visitor.visit_negative (Current)
		elseif operator.output ~ negation.output then
			visitor.visit_negation (Current)
		elseif operator.output ~ sum.output then
			visitor.visit_sum (Current)
		elseif operator.output ~ for_all.output then
			visitor.visit_generalized_and (Current)
		elseif operator.output ~ exists.output then
			visitor.visit_generalized_or (Current)
		end

	end

end
