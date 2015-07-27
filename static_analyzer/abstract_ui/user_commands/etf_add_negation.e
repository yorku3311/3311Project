note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_NEGATION
inherit 
	ETF_ADD_NEGATION_INTERFACE
		redefine add_negation end
create
	make
feature -- command 
	add_negation
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
