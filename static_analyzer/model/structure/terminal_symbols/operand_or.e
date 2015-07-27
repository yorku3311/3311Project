note
	description: "Summary description for {OPERAND_OR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERAND_OR
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "||"
	end


end
