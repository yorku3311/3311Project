note
	description: "Summary description for {VISIT_PRINT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_PRINT

inherit
	VISIT_EXPRESSION
feature -- Give the evaluated expression
	visit (expression:EXPRESSION):STRING
	do
		Result := expression.output
	end
end
