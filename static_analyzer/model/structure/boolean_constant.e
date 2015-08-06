note
	description: "Summary description for {BOOLEAN_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOLEAN_CONSTANT

inherit
	COMPOSITE_EXPRESSION
	redefine
		evaluate,accept
	end
create
	make
feature -- Commands
	set_boolean_constant (b : BOOLEAN)
	do
		if b then
			expression_list.put_i_th(create {BOOL_TRUE},1)
		else
			expression_list.put_i_th(create {BOOL_FALSE},1)
		end

	end
	evaluate :STRING
	do
		Result := ""
	end
feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		--Result.make_empty
	--	Result:= visitor.visit (Current)
	end


end
