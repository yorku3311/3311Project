note
	description: "Summary description for {EXISTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EXISTS
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "||"
	end


end
