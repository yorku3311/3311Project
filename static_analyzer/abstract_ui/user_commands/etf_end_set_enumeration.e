note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_END_SET_ENUMERATION
inherit
	ETF_END_SET_ENUMERATION_INTERFACE
		redefine end_set_enumeration end
create
	make
feature -- command
	end_set_enumeration
    	do
			-- perform some update on the model state
			if (model.my_stack.count = 0) then
				model.end_set_enumeration
				model.set_message (model.status_completed_exp)
			else
				model.set_message (model.status_incomplete_exp)
				model.set_message (model.status_ok)
			end
			model.pretty_print
			etf_cmd_container.on_change.notify ([Current])
    	end

end
