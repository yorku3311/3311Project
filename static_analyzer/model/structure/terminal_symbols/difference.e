note
	description: "Summary description for {DIFFERENCE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIFFERENCE
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "\"
	end

	evaluate :STRING
	do
		Result := output
	end


end
