note
	description: "Summary description for {BOOL_TRUE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOL_TRUE
inherit
	TERMINAL_SYMBOL

feature -- Query
	output: STRING
	do
		Result := "true"
	end



end
