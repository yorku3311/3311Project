note
	description: "Summary description for {SET_ENUMERATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SET_ENUMERATION
inherit
	COMPOSITE_EXPRESSION


create
	make_empty
feature -- Expression State
	is_current_expression_closed : BOOLEAN
	expression_state :INTEGER

feature -- Constructor
	make_empty
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		set_expression_type (type_set)
		set_current_expression (true)
	end


feature -- Add children
	add_child (e1 : EXPRESSION)
	do
		expression_list.extend (e1)
	end


feature -- Perform Operations
	accept (visitor : VISIT_EXPRESSION)
	do
		visitor.visit_set_enumeration (Current.deep_twin)
	end

feature -- Commands
	get_current_expression : EXPRESSION
	do
		create {NULL_EXPRESSION}Result.make_first
		if is_current_expression then
			Result := current
		else
			from
				start
			until
				after
			loop
				if attached {COMPOSITE_EXPRESSION}item as comp_item then
					Result := comp_item.get_current_expression
				end
				forth

			end
		end

	end

feature -- Accessor features

	item : EXPRESSION

	do
		Result := expression_list.item
	end

	start
	do
		expression_list.go_i_th (1)
	end

	forth
	do
		expression_list.forth
	end

	after: BOOLEAN
	do
		Result:= expression_list.after
	end

	is_last: BOOLEAN
	do
		Result:= expression_list.islast
	end

end
