note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_EVALUATE
inherit
	ETF_EVALUATE_INTERFACE
		redefine evaluate end
create
	make
feature -- command
	evaluate
    	do
			if not model.my_stack.is_empty then
    			model.set_message (model.status_incomplete_exp)
    		else
    			model.evaluate
    		end

			etf_cmd_container.on_change.notify ([Current])
    	end

end
