note
	description: "Summary description for {LPAPREN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LPAREN
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "("
	end

	evaluate :STRING
	do
		Result := output
	end


end
