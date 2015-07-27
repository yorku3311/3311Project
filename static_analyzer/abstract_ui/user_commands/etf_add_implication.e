note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_IMPLICATION
inherit 
	ETF_ADD_IMPLICATION_INTERFACE
		redefine add_implication end
create
	make
feature -- command 
	add_implication
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
