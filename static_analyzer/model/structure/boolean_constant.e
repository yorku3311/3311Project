note
	description: "Summary description for {BOOLEAN_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOLEAN_CONSTANT

inherit
	COMPOSITE_EXPRESSION
create
	make
feature -- Commands
	add_boolean_constant (b : BOOLEAN)
	do
		if b then
			expression_list.put_i_th(create {BOOL_TRUE},1)
		else
			expression_list.put_i_th(create {BOOL_FALSE},1)
		end

	end


end
