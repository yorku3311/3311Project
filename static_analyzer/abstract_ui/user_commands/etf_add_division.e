note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_DIVISION
inherit
	ETF_ADD_DIVISION_INTERFACE
		redefine add_division end
create
	make
feature -- command
	add_division
    	do
			-- perform some update on the model state
			-- error reporting
			if model.type_check_expression.is_divisor_by_zero then
				model.set_message (model.status_divisor_zero)
			else
				model.add_division
				model.set_message (model.status_ok)
			end
			model.pretty_print
			etf_cmd_container.on_change.notify ([Current])
    	end

end
