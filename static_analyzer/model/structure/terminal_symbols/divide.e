note
	description: "Summary description for {DIVIDE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIVIDE
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "/"
	end

	evaluate :STRING
	do
		Result := output
	end


end
