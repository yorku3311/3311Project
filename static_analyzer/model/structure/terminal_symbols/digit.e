note
	description: "Summary description for {DIGIT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIGIT
inherit
	EXPRESSION
create
	make_digit
feature -- Constructor
	make_digit (i: INTEGER)
	do
		s := i.out
	end
feature -- Attributes
	s : STRING

feature -- Query
	output: STRING
	do
		Result := s
	end


end
