note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_MULTIPLICATION
inherit
	ETF_ADD_MULTIPLICATION_INTERFACE
		redefine add_multiplication end
create
	make
feature -- command
	add_multiplication
    	do
			-- perform some update on the model state
			model.add_multiplication
			etf_cmd_container.on_change.notify ([Current])
    	end

end
