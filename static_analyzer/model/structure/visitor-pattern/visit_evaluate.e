note
	description: "Summary description for {VISIT_EVALUATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_EVALUATE

inherit
	VISIT_EXPRESSION

feature -- Give the evaluated expression
	visit (expression:EXPRESSION):STRING
	do
		Result := expression.evaluate
	end

end
