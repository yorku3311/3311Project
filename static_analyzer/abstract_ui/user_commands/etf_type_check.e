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
    		if not model.my_stack.is_empty then
    			model.set_message (model.status_incomplete_exp)
    		else
    			model.type_check
    		end


			etf_cmd_container.on_change.notify ([Current])
    	end

end
