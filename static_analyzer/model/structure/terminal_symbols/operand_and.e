note
	description: "Summary description for {OPERAND_AND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERAND_AND
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "&&"
	end


end
