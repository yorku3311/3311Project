note
	description: "Summary description for {OPERATOR_IMPLIES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATOR_IMPLIES
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "=>"
	end


end
