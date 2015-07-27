note
	description: "Summary description for {FORALL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FORALL
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "&&"
	end

	evaluate :STRING
	do
		Result := output
	end


end
