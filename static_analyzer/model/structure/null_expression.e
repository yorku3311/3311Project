note
	description: "Summary description for {NULL_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NULL_EXPRESSION
inherit
	EXPRESSION
	redefine
		output,evaluate
	end
create
	make,make_first
feature -- Attributes
	symbol : STRING
	is_current : BOOLEAN
		-- is this the current item we are changing?


feature -- Add operation override
add_expression (expression : EXPRESSION):BOOLEAN
		--extend to the first 'NULL_EXPRESSION' that is found
	local
		is_set : BOOLEAN
	do
		-- Replace the current null expression

		is_set := true
	end

feature -- Constructors
	make
	do
		create symbol.make_from_string("nil")
		is_current := false
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
	evaluate :STRING
	do
		Result := output
	end


end
