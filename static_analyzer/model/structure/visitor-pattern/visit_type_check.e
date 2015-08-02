note
	description: "Summary description for {VISIT_TYPE_CHECK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_TYPE_CHECK

inherit
	VISIT_EXPRESSION
feature -- Give the evaluated expression
	visit (expression:EXPRESSION):STRING
	do
		Result := ""
	end

end
