note
	description: "Summary description for {VISIT_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VISIT_EXPRESSION

feature
	visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do

	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do

	end
	
feature -- Test class
	visit(expression :EXPRESSION):STRING
	deferred
	end

end
