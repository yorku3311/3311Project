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

feature -- Give the evaluated expression
	visit_addition(e: BINARY_OP)
	local
		left_child : EXPRESSION
		right_child: EXPRESSION
		eval : VISIT_EVALUATE
		i : INTEGER
	do

		create eval
		left_child := e.left.accept(eval)
		i := eval.value
		right_child := e.right.accept(eval)
		i := i + eval.value
		value := i.out
	end


end
