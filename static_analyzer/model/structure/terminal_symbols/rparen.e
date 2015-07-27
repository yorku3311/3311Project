note
	description: "Summary description for {RPAREN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RPAREN
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := ")"
	end


end
