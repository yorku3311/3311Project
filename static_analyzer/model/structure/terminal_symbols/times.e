note
	description: "Summary description for {TIMES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TIMES
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "*"
	end

	evaluate :STRING
	do
		Result := output
	end


end
