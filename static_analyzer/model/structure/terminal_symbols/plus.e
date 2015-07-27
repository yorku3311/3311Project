note
	description: "Summary description for {PLUS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PLUS
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "+"
	end

	evaluate :STRING
	do
		Result := output
	end


end
