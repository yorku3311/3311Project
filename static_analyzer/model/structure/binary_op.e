note
	description: "Summary description for {BINARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BINARY_OP

inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, evaluate,accept,make
	end
create
	make
feature -- Constructors
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		create times create divide create plus create minus create op_and
		create op_or create op_equals create op_implies create op_lt create op_gt
		create op_union create op_intersect create op_difference
	end
feature{NONE} -- Attributes
	times : TIMES
	divide : DIVIDES
	plus : PLUS
	minus : MINUS
	op_and :OPERAND_AND
	op_or : OPERAND_OR
	op_equals : OPERATOR_EQUAL
	op_implies : OPERATOR_IMPLIES
	op_lt : OPERATOR_LT
	op_gt : OPERATOR_GT
	op_union : UNION
	op_intersect : INTERSECT
	op_difference : DIFFERENCE
feature -- Expression type
	expression_type : INTEGER
	arithmatic : INTEGER = 1
	logical_boolean : INTEGER = 2
	logical_arithmatic : INTEGER = 3
	binary_set_operation : INTEGER = 4
feature{NONE} -- Internal Commands


feature -- Commands to set the status of this expression type
	set_expression_type (i :INTEGER)
	do
		expression_type := i
	end


feature -- Command
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Expression Operator Expression RPAREN
			expression_list.put_i_th (create {LPAREN},1)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make)
			expression_list.extend (create {RPAREN})
		end

feature -- Evaluate Queries
	evaluate :STRING
	local
		exp_1 : INTEGER
		exp_2 : INTEGER
		exp_1_bool : BOOLEAN
		exp_2_bool : BOOLEAN
		i : INTEGER
		b : BOOLEAN
		operator_type : STRING
		expression_1 : COMPOSITE_EXPRESSION
		expression_2 : COMPOSITE_EXPRESSION
		output_expression : SET_ENUMERATION
		-- this hold the list of digits to be used for union, intersect and difference
		expression_digit_list : ARRAYED_LIST[DIGIT]

	do
		create operator_type.make_from_string (expression_list.at (3).output)
		create output_expression.make
		create expression_1.make create expression_2.make
		create expression_digit_list.make(0)

		-- we will use these to compute the union, intersect, and difference
		if attached {COMPOSITE_EXPRESSION}expression_list.at (2) as comp_exp then
			expression_1 := comp_exp
		end
		if attached {COMPOSITE_EXPRESSION}expression_list.at (4) as comp_exp then
			expression_2 := comp_exp
		end



		inspect expression_type
		when arithmatic then
			exp_1 := expression_1.evaluate.to_integer
			exp_2 := expression_2.evaluate.to_integer
		when logical_arithmatic then
			exp_1 := expression_1.evaluate.to_integer
			exp_2 := expression_2.evaluate.to_integer
		when logical_boolean then
			exp_1_bool := expression_1.evaluate.to_boolean
			exp_2_bool := expression_2.evaluate.to_boolean

		when binary_set_operation then

		end

		if operator_type ~ times.output then
			i := exp_1 * exp_2
		elseif operator_type ~ divide.output then
			--i := {INTEGER}(exp_1 * exp_2)
		elseif operator_type ~ plus.output then
			i := exp_1 + exp_2
		elseif operator_type ~ minus.output then
			i := exp_1 - exp_2

		elseif operator_type ~ op_or.output then
			b := exp_1_bool or exp_2_bool
		elseif operator_type ~ op_equals.output then
			b := exp_1_bool = exp_2_bool
		elseif operator_type ~ op_implies.output then
			b := exp_1_bool implies exp_2_bool
		elseif operator_type ~ op_lt.output then
			b := exp_1 <  exp_2
		elseif operator_type ~ op_gt.output then
			b := exp_1 >  exp_2
		-- For Now we will assume that both expressions that we are
		-- taking the union/intersect/difference of are of type 'set_enumeration'
		-- that is, neither of them are just simple integer constants
		else
			output_expression.set_expression_state (output_expression.begin_expression)
			output_expression.add_operation (create {NULL_EXPRESSION}.make_first)
			if operator_type ~ op_union.output then
				expression_digit_list :=evaluate_union (expression_1.to_integer_array, expression_2.to_integer_array)
			elseif operator_type ~ op_intersect.output then
				expression_digit_list :=evaluate_intersect (expression_1.to_integer_array, expression_2.to_integer_array)
			elseif operator_type ~ op_difference.output then
				expression_digit_list :=evaluate_difference (expression_1.to_integer_array, expression_2.to_integer_array)
			end
			-- make an enumeration list out of this
			across expression_digit_list as cursor
			loop
				output_expression.add (cursor.item)
			end
			output_expression.end_set_enumeration
		end

		inspect expression_type
		when arithmatic then
			Result := i.out
		when logical_boolean then
			Result := b.out
		when logical_arithmatic then
			Result := b.out
		when binary_set_operation then
			Result := output_expression.evaluate
		end
	end

	evaluate_union (exp_1 : ARRAYED_LIST[DIGIT]; exp_2 : ARRAYED_LIST[DIGIT]): ARRAYED_LIST[DIGIT]
	local
		digit_not_present_in_array : BOOLEAN
	do
		create Result.make (0)
		digit_not_present_in_array := true
		Result := exp_1
		across exp_2 as other_list loop
			across exp_1 as my_list
			loop
				if my_list.item.evaluate.to_integer ~ other_list.item.evaluate.to_integer  then
					digit_not_present_in_array := false
				end
			end
			if digit_not_present_in_array then
				Result.extend (other_list.item)
				digit_not_present_in_array := true
			end
		end

	end

	evaluate_intersect (exp_1 : ARRAYED_LIST[DIGIT]; exp_2 : ARRAYED_LIST[DIGIT]): ARRAYED_LIST[DIGIT]
	local
		digit_not_present_in_array : BOOLEAN
	do
		create Result.make (0)
		digit_not_present_in_array := true
		across exp_2 as other_list loop
			across exp_1 as my_list
			loop
				if my_list.item.evaluate.to_integer ~ other_list.item.evaluate.to_integer  then
					digit_not_present_in_array := false
				end
			end
			if not digit_not_present_in_array then
				Result.extend (other_list.item)
				digit_not_present_in_array := true
			end
		end

	end

	evaluate_difference (exp_1 : ARRAYED_LIST[DIGIT]; exp_2 : ARRAYED_LIST[DIGIT]): ARRAYED_LIST[DIGIT]
	local
		index_to_remove : ARRAYED_LIST[INTEGER]
	do
		create Result.make (0)
		create index_to_remove.make (0)
		Result := exp_1
		across exp_2 as other_list loop
			across exp_1 as my_list
			loop
				if my_list.item.evaluate.to_integer ~ other_list.item.evaluate.to_integer  then
					index_to_remove.extend (my_list.cursor_index)
				end
			end
		end
		-- once the list of of the elements which are the same are stored, then remove the
		-- to get the difference
		-- NOTE: INCORRECTLY IMPLEMENTED
		across index_to_remove as cursor
		loop
			Result.go_i_th (cursor.item)
			Result.remove
		end

	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
