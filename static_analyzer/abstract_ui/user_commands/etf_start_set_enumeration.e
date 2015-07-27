note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_START_SET_ENUMERATION
inherit 
	ETF_START_SET_ENUMERATION_INTERFACE
		redefine start_set_enumeration end
create
	make
feature -- command 
	start_set_enumeration
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
