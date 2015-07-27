note
	description: "Summary description for {NULL_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NULL_EXPRESSION
inherit
	EXPRESSION
create
	make, make_first
feature -- Attributes
	symbol : STRING
	is_current : BOOLEAN

feature -- Constructors
	make
	do
		create symbol.make_from_string("nil")
	end
	make_first
	do
		create symbol.make_from_string("?")
		is_current := true
	end
feature -- Queries
	output: STRING
	do
		Result := symbol
	end


end
