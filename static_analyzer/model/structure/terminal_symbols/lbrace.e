note
	description: "Summary description for {LBRACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LBRACE
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "{"
	end


end
