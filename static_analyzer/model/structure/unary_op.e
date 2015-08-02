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
		add_operation, evaluate,accept
	end
create
	make

feature -- Commands
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Operator Expression RPAREN
			expression_list.put_i_th (create {LPAREN},1)
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RPAREN})

		end
	evaluate :STRING
	do
		Result := ""
	end
feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
