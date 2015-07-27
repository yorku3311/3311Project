note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_NEGATIVE
inherit 
	ETF_ADD_NEGATIVE_INTERFACE
		redefine add_negative end
create
	make
feature -- command 
	add_negative
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
