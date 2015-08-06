note
	description: "Summary description for {VISIT_EVALUATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VISIT_EVALUATE

inherit
	VISIT_EXPRESSION
feature
	value :STRING
create make

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
		left_child := e.left.accept(eval)
		i := visit_evaluate.value
		right_child := e.right.accept(eval)
		i := i + visit_evaluate.value
		value := i.out
	end


end
