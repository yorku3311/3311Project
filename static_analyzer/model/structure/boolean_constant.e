note
	description: "Summary description for {BOOLEAN_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOLEAN_CONSTANT

inherit
	EXPRESSION
create
	make

feature -- Constructor
	make
	do
		set_expression_type (type_boolean_constant)
	end

feature{NONE} -- Attributes
	bool : BOOLEAN
feature -- Commands
	set_boolean_constant (b : BOOLEAN)
	do
		if b then
			bool := true
		else
			bool := false
		end

	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)
	do
		visitor.visit_boolean_constant (Current.deep_twin)
	end

	output : STRING
	do
		Result := bool.out
	end

	get_current_expression : EXPRESSION
	do
		Result := current
	end



end
