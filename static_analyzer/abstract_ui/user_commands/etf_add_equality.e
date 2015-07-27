note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_EQUALITY
inherit 
	ETF_ADD_EQUALITY_INTERFACE
		redefine add_equality end
create
	make
feature -- command 
	add_equality
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
