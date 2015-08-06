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
		evaluate,accept
	end
create
	make

feature -- Command
	set_integer_constant (i : INTEGER)
	do
		expression_list.put_i_th(create {DIGIT}.make_digit(i),1)
	end
	evaluate :STRING
	do
		Result := expression_list.at (1).output
	end
feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		--Result.make_empty
	--	Result:= visitor.visit (Current)
	end

end
