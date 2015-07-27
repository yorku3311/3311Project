note
	description: "Summary description for {TERMINAL_SYMBOL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	TERMINAL_SYMBOL

inherit
	EXPRESSION
feature -- Query
	evaluate : STRING
	do
		Result := output
	end

end
