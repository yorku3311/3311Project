note
	description: "Summary description for {INTERSECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERSECT
inherit
	EXPRESSION

feature -- Query
	output: STRING
	do
		Result := "/\"
	end
	evaluate :STRING
	do
		Result := output
	end


end
