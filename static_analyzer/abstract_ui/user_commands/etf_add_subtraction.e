note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_SUBTRACTION
inherit
	ETF_ADD_SUBTRACTION_INTERFACE
		redefine add_subtraction end
create
	make
feature -- command
	add_subtraction
    	do
			-- perform some update on the model state
			model.add_subtraction
			etf_cmd_container.on_change.notify ([Current])
    	end

end
