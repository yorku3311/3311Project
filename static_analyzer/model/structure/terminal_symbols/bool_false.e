note
	description: "Summary description for {BOOL_FALSE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOOL_FALSE
inherit
	TERMINAL_SYMBOL

feature -- Query
	output: STRING
	do
		Result := "false"
	end


end
