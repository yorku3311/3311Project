note
	description: "Summary description for {SUM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SUM
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
