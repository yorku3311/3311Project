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
		add_operation
	end
create
	make
feature -- Attributes


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

end
