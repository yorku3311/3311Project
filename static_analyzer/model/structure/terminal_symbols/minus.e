note
	description: "Summary description for {MINUS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MINUS
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "-"
	end


end
