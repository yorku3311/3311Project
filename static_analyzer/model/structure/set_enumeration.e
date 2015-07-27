note
	description: "Summary description for {SET_ENUMERATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SET_ENUMERATION
inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, evaluate
	end
create
	make
feature -- Commands
	add_operation (expression : EXPRESSION)
	do

	end

	evaluate :STRING
	do
		Result := ""
	end

end
