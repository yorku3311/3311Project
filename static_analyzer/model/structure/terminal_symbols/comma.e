note
	description: "Summary description for {COMMA}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMMA
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := ","
	end

	evaluate :STRING
	do
		Result := output
	end


end
