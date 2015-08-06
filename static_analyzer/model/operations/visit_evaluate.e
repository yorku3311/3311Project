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

feature -- Constructor
	make
	do
		create {NULL_EXPRESSION}left_child.make
		create {NULL_EXPRESSION}right_child.make
		create value.make_empty
		create set_enum_list.make (0)
	end

feature{NONE} -- Internal Attributes
	left_child : EXPRESSION
	right_child : EXPRESSION
feature -- Extra Attributes
	set_enum_list : ARRAYED_LIST[STRING]

feature -- Give the evaluated expression
	visit_addition(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do

		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
	    e.right.accept(visit_evaluate)
		i := i + visit_evaluate.value.to_integer
		value := i.out
	end

	visit_subtraction(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
		e.right.accept(visit_evaluate)
		i := i - visit_evaluate.value.to_integer
		value := i.out
	end

	visit_multiplication(e: BINARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_integer
			e.right.accept(visit_evaluate)
			i := i * visit_evaluate.value.to_integer
			value := i.out
	end

	visit_boolean_constant(e: BOOLEAN_CONSTANT)
	do
		value := e.output
		set_enum_list.extend (value)
	end

	visit_integer_constant(e: INTEGER_CONSTANT)
	do
		value := e.output
		set_enum_list.extend (value)
	end

	visit_conjunction(e: BINARY_OP)

		local
			i : BOOLEAN

			visit_evaluate : VISIT_EVALUATE
	do
		    create visit_evaluate.make
			e.left.accept(visit_evaluate)
			i := visit_evaluate.value.to_boolean
			e.right.accept(visit_evaluate)
			i := i and visit_evaluate.value.to_boolean
			value := i.out
	end

	visit_disjunction(e: BINARY_OP)
	local
		i : BOOLEAN
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_boolean
		e.right.accept(visit_evaluate)
		i := i or visit_evaluate.value.to_boolean
		value := i.out
	end


	visit_division(e: BINARY_OP)
	local
		i : INTEGER
		j: DOUBLE
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
		e.right.accept(visit_evaluate)
		j := (i / visit_evaluate.value.to_integer)
		i := j.floor
		value := i.out
	end

	visit_equality(e: BINARY_OP)
	local
		left_child_array : ARRAYED_LIST[STRING]
		right_child_array : ARRAYED_LIST[STRING]
		visit_evaluate : VISIT_EVALUATE
		bool : BOOLEAN
	do
		create visit_evaluate.make
		e.left.accept (visit_evaluate)
		left_child_array := visit_evaluate.set_enum_list
		e.right.accept (visit_evaluate)
		right_child_array := visit_evaluate.set_enum_list
		bool :=
		across left_child_array as left
		all
			across right_child_array as right
			some
				left.item = right.item
			end
		end
		implies
		across right_child_array as right
		all
			across left_child_array as left
			some
				left.item = right.item
			end
		end
	end



	visit_implication(e: BINARY_OP)
	local
		i : BOOLEAN
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_boolean
		e.right.accept(visit_evaluate)
		i := i implies visit_evaluate.value.to_boolean
		value := i.out
	end

	visit_less_than(e: BINARY_OP) -- edit this !!!!
	local
		i : INTEGER
		b : BOOLEAN
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
		e.right.accept(visit_evaluate)
		b := i < visit_evaluate.value.to_integer
		value := b.out
	end

	visit_greater_than(e: BINARY_OP)
	local
		i : INTEGER
		b : BOOLEAN
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.left.accept(visit_evaluate)
		i := visit_evaluate.value.to_integer
		e.right.accept(visit_evaluate)
		b := i > visit_evaluate.value.to_integer
		value := b.out
	end


	visit_generalized_and(e: UNARY_OP)
	local
		b : BOOLEAN
		set_list : ARRAYED_LIST[STRING]
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		b := true
		e.child.accept (visit_evaluate)
		set_list := visit_evaluate.set_enum_list

		across set_list as cursor
		loop
			b := b and cursor.item.to_boolean
		end
		value := b.out
	end

	visit_generalized_or(e: UNARY_OP)
	local
		b : BOOLEAN
		set_list : ARRAYED_LIST[STRING]
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		b := true
		e.child.accept (visit_evaluate)
		set_list := visit_evaluate.set_enum_list

		across set_list as cursor
		loop
			b := b or cursor.item.to_boolean
		end
		value := b.out
	end

	visit_negation(e: UNARY_OP)
	local
		b : BOOLEAN
		set_list : ARRAYED_LIST[STRING]
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		b := true
		e.child.accept (visit_evaluate)
		create set_list.make (0)

		across visit_evaluate.set_enum_list as cursor
		loop
			b := not cursor.item.to_boolean
			set_list.extend (b.out)
		end
		set_enum_list := set_list
	end

	visit_sum(e: UNARY_OP)
	local
		i : INTEGER
		visit_evaluate : VISIT_EVALUATE
	do
		create visit_evaluate.make
		e.child.accept (visit_evaluate)

		across visit_evaluate.set_enum_list as cursor
		loop
			i := i + cursor.item.to_integer
		end
		value := i.out
	end

	visit_intersection(e: BINARY_OP)
	local
		visit_evaluate_left : VISIT_EVALUATE
		visit_evaluate_right : VISIT_EVALUATE
	do
		create visit_evaluate_left.make
		create visit_evaluate_right.make
		e.left.accept (visit_evaluate_left)
		e.right.accept (visit_evaluate_right)

		across visit_evaluate_left.set_enum_list as left
		loop
			across visit_evaluate_right.set_enum_list as right
			loop
				if left.item ~ right.item then
					set_enum_list.extend (left.item)
				end
			end
		end

	end


	visit_difference(e: BINARY_OP)
	local
		visit_evaluate_left : VISIT_EVALUATE
		visit_evaluate_right : VISIT_EVALUATE
	do
		create visit_evaluate_left.make
		create visit_evaluate_right.make
		e.left.accept (visit_evaluate_left)
		e.right.accept (visit_evaluate_right)

		across visit_evaluate_left.set_enum_list as left
		loop
			set_enum_list.extend (left.item)
		end
		across visit_evaluate_right.set_enum_list as right
		loop
			set_enum_list.extend (right.item)
		end

		set_enum_list := remove_repeating_elements_in_set (set_enum_list)

	end



	visit_negative(e: UNARY_OP)
	do
	end



	visit_union(e: BINARY_OP)
	do
	end

	visit_set_enumeration (e : SET_ENUMERATION)
	do

	end

	visit_null_expression (e  : NULL_EXPRESSION)
	do
	end

feature{NONE}-- Internal Functios
	remove_repeating_elements_in_set (set_enum :ARRAYED_LIST[STRING]) : ARRAYED_LIST[STRING]
	do
		create Result.make (0)
	end

end
