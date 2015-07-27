note
	description: "Summary description for {BOOL_TRUE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOL_TRUE
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "true"
	end


end
