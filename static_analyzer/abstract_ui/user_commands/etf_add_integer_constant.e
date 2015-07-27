note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ADD_INTEGER_CONSTANT
inherit
	ETF_ADD_INTEGER_CONSTANT_INTERFACE
		redefine add_integer_constant end
create
	make
feature -- command
	add_integer_constant(c: INTEGER)
    	do
			-- perform some update on the model state
			model.add_integer_constant(c)
			etf_cmd_container.on_change.notify ([Current])
    	end

end
