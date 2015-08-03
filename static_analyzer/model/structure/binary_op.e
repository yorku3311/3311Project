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
		create times
	end
feature -- Attributes
	times : TIMES


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
		i :INTEGER
	do
		if attached {TIMES}expression_list.at(3) as c then
			i := expression_list.at (2).evaluate.to_integer*expression_list.at (4).evaluate.to_integer
		elseif attached {DIVIDE}expression_list.at(3) as c then
		--	i := expression_list.at (2).evaluate.to_integer/expression_list.at (4).evaluate.to_integer
		end
		if expression_list.at (3).output ~ times.output then

		end


		Result := i.out
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
