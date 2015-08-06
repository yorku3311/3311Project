note
	description: "Summary description for {INTEGER_CONSTANT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTEGER_CONSTANT

inherit
	EXPRESSION
	redefine
		accept,output
	end
create make
feature -- Constructor
	make
	do
		create valuez.make_empty
	end
feature {NONE} -- Attributes
	valuez : STRING

feature -- Command
	set_integer_constant (i : INTEGER)
	do
		valuez := i.out
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		visitor.visit_integer_constant (Current)
	end

	output : STRING
	do
		Result := valuez
	end
	evaluate : STRING
	do
		Result := ""
	end
end
