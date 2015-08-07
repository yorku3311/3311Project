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
    		elseif model.type_check_expression.is_divisor_by_zero then
    			model.set_message (model.status_divisor_zero)
    		else
    			model.evaluate
    			model.set_message (model.status_ok)
    		end

			etf_cmd_container.on_change.notify ([Current])
    	end

end
