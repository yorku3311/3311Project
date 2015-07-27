note
	description: "Summary description for {RBRACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RBRACE
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "}"
	end

	evaluate :STRING
	do
		Result := output
	end


end
