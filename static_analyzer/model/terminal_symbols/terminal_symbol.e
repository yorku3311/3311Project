note
	description: "Summary description for {TERMINAL_SYMBOL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TERMINAL_SYMBOL
create
	make
feature -- Constructor
	make
	do
		create value.make_empty
	end
feature -- Set Symbol
	value : STRING

	set_symbol (s : STRING)
	do
		value.make_from_string(s)
	end
feature -- Query
	conjunction : STRING
	do
		Result := " && "
	end
	disjunction : STRING
	do
		Result := " || "
	end
	forall: STRING
	do
		Result := "&& "
	end
	exists: STRING
	do
		Result := "|| "
	end
	null_first: STRING
	do
		Result := "?"
	end
	null_remaining : STRING
	do
		Result := "nil"
	end
	divides: STRING
	do
		Result := " / "
	end
	difference: STRING
	do
		Result := " \ "
	end
	comma: STRING
	do
		Result := ", "
	end
	rparen : STRING
	do
		Result := ")"
	end
	lparen : STRING
	do
		Result := "("
	end
	rbrace: STRING
	do
		Result := "}"
	end
	lbrace: STRING
	do
		Result := "{"
	end
	times: STRING
	do
		Result := " * "
	end
	op_equal: STRING
	do
		Result := " = "
	end
	op_gt: STRING
	do
		Result := " > "
	end
	op_implies: STRING
	do
		Result := " => "
	end

	op_lt: STRING
	do
		Result := " < "
	end
	plus: STRING
	do
		Result := " + "
	end
	sum : STRING
	do
		Result := "+ "
	end
	union: STRING
	do
		Result := " \/ "
	end
	negative: STRING
	do
		Result := "- "
	end
	op_and: STRING
	do
		Result := " && "
	end
	op_or: STRING
	do
		Result := " || "
	end
	op_sum: STRING
	do
		Result := "+ "
	end
	intersect: STRING
	do
		Result := " /\ "
	end
	minus: STRING
	do
		Result := " - "
	end
	negation: STRING
	do
		Result := "! "
	end

end
