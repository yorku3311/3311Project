note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_GREATER_THAN
inherit
	ETF_ADD_GREATER_THAN_INTERFACE
		redefine add_greater_than end
create
	make
feature -- command
	add_greater_than
    	do
			-- perform some update on the model state
			model.add_greater_than
			etf_cmd_container.on_change.notify ([Current])
    	end

end
