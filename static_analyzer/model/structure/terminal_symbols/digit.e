note
	description: "Summary description for {DIGIT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIGIT
inherit
	TERMINAL_SYMBOL
create
	make_digit
feature -- Constructor
	make_digit (i: INTEGER)
	do
		s := i.out
	end
feature{NONE} -- Internal Attributes
	s : STRING

feature -- Query
	output: STRING
	do
		Result := s
	end



end
