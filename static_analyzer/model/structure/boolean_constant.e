note
	description: "Summary description for {BOOLEAN_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOLEAN_CONSTANT

inherit
	EXPRESSION
	redefine
		accept
	end

feature -- Attributes
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
		--Result.make_empty
	--	Result:= visitor.visit (Current)
	end

	output : STRING
	do
		Result := bool.out
	end

	evaluate : STRING
	do
		Result := ""
	end


end
