note
	description: "Summary description for {INTEGER_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTEGER_CONSTANT

inherit
	COMPOSITE_EXPRESSION
	redefine
		accept
	end
create
	make

feature -- Command
	set_integer_constant (i : INTEGER)
	do
		expression_list.put_i_th(create {DIGIT}.make_digit(i),1)
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		--Result.make_empty
	--	Result:= visitor.visit (Current)
	end

end
