note
	description: "Summary description for {OPERATOR_EQUAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATOR_EQUAL
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "="
	end

	evaluate :STRING
	do
		Result := output
	end


end
