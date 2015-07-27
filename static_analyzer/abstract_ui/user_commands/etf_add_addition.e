note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_ADDITION
inherit 
	ETF_ADD_ADDITION_INTERFACE
		redefine add_addition end
create
	make
feature -- command 
	add_addition
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
