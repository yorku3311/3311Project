note
	description: "Summary description for {INTEGER_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTEGER_CONSTANT

inherit
	COMPOSITE_EXPRESSION
create
	make

feature -- Command
	add_integer_constant (i : INTEGER)
	do
		expression_list.put_i_th(create {DIGIT}.make_digit(i),1)
	end

end
