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
		add_operation, evaluate
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
	evaluate :STRING
	local
		i : INTEGER
	do
		expression_list.go_i_th (3)
		if attached {TIMES}expression_list.item as c then
			i := expression_list.at (2).evaluate.to_integer*expression_list.at (4).evaluate.to_integer
		end

		Result := i.out
	end

end
