note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_CONJUNCTION
inherit 
	ETF_ADD_CONJUNCTION_INTERFACE
		redefine add_conjunction end
create
	make
feature -- command 
	add_conjunction
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
