note
	description: "Summary description for {NULL_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NULL_EXPRESSION
inherit
	COMPOSITE_EXPRESSION

create
	make,make_first
feature -- Attributes
	is_current : BOOLEAN
		-- is this the current item we are changing?
feature -- Constructors
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		is_current := false
	end
	make_first
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		is_current := true
		set_current_expression (true)
	end

feature -- perform operations
	accept(visitor : VISIT_EXPRESSION)
	do
		visitor.visit_null_expression (Current)
	end
feature -- Commands
	get_current_expression : EXPRESSION
	do
		create {NULL_EXPRESSION} Result.make_first
		if is_current_expression then
			Result := current
		end
	end

end
