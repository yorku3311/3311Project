note
	description: "Summary description for {VISIT_EVALUATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_EVALUATE

inherit
	VISIT_EXPRESSION
create make
feature
	value :STRING


feature -- Constructor
	make
	do
		create {NULL_EXPRESSION}left_child.make
		create {NULL_EXPRESSION}left_child.make
		create visit_evaluate.make
	end
feature{NONE} -- Internal Attributes
	left_child : EXPRESSION
	right_child : EXPRESSION
	visit_evaluate : VISIT_EVALUATE

feature -- Give the evaluated expression
	visit_addition(e: BINARY_OP)
	local
		i : INTEGER
	do

		create eval
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value
	    e.right.accept(visit_evaluate)
		i := i + visit_evaluate.value
		value := i.out
	end
-- you can do subtraction...
-- so first e.left is just an expression
-- e.right
-- when you do e.left.accept(eval)
-- you are calling Visit_evaluate again
-- keeps doing this until it treaches an integer constant
-- then returns the integer value


end
