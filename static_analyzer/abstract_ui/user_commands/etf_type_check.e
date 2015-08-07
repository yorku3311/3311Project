note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_TYPE_CHECK
inherit
	ETF_TYPE_CHECK_INTERFACE
		redefine type_check end
create
	make
feature -- command
	type_check
    	do
    		if model.my_stack.is_empty then
    			model.type_check
    		else
    			model.set_message (model.status_incomplete_exp)
    		end


			etf_cmd_container.on_change.notify ([Current])
    	end

end
