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
		add_operation
	end
create
	make

feature -- Commands
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Operator Expression RPAREN
			expression_list.extend (create {LPAREN})
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RPAREN})

		end

end
