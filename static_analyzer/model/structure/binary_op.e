note
	description: "Summary description for {BINARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BINARY_OP

inherit
	COMPOSITE_EXPRESSION


create
	make, make_add, make_subtract, make_times, make_divides, make_and, make_or, make_implies, make_equal,
	make_gt, make_lt, make_union, make_intersect, make_difference
feature -- Constructors
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		expression_list.extend (create {NULL_EXPRESSION}.make)
		left.set_current_expression (true)
	end
	make_add
	do
		make
		set_expression_type (type_add)
	end
	make_subtract
	do
		make
		set_expression_type (type_subtract)

	end
	make_times
	do
		make
		set_expression_type (type_times)
	end
	make_divides
	do
		make
		set_expression_type (type_divides)

	end
	make_and
	do
		make
		set_expression_type (type_and)

	end
	make_or
	do
		make
		set_expression_type (type_or)

	end
	make_implies
	do
		make
		set_expression_type (type_implies)

	end
	make_equal
	do
		make
		set_expression_type (type_equal)

	end
	make_gt
	do
		make
		set_expression_type (type_gt)

	end
	make_lt
	do
		make
		set_expression_type (type_lt)

	end
	make_union
	do
		make
		set_expression_type (type_union)

	end
	make_intersect
	do
		make
		set_expression_type (type_intersect)

	end
	make_difference
	do
		make
		set_expression_type (type_difference)

	end

feature -- Query Children
	left : EXPRESSION
	do
		Result := expression_list.at(1)
	end

	right : EXPRESSION
	do
		Result := expression_list.at (2)
	end


feature -- Commands
	set_left (e1 : EXPRESSION)
	do
		expression_list.put_i_th (e1,1)
	end

	set_right (e1 : EXPRESSION)
	do
		expression_list.put_i_th (e1,2)
	end

	set_by_ref (e : NULL_EXPRESSION)
	do
		if left = e then
			expression_list.put_i_th (e, 1)
		elseif right = e then
			expression_list.put_i_th (e, 1)
		else
			if not left_expression_is_fully_specified then
				if attached {COMPOSITE_EXPRESSION}left as left_expression then
					left_expression.set_by_ref (e)
				end
			elseif not right_expression_is_fully_specified then
				if attached {COMPOSITE_EXPRESSION}right as right_expression then
					right_expression.set_by_ref (e)
				end
			end
		end
	end

	current_expression_is_fully_specified : BOOLEAN
	do
		if not attached {NULL_EXPRESSION}left as left_expression then
			if not attached {NULL_EXPRESSION}right as right_expression then
				Result := true
			end
		end
	end
	left_expression_is_fully_specified : BOOLEAN
	do
		if not attached {NULL_EXPRESSION}left as left_expression then
			Result := true
		end
	end

	right_expression_is_fully_specified : BOOLEAN
	do
		if not attached {NULL_EXPRESSION}right as right_expression then
				Result := true
		end
	end


feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		inspect get_expression_type
		when type_times then
			visitor.visit_multiplication (Current.deep_twin)
		when type_divides then
			visitor.visit_division (Current.deep_twin)
		when type_add then
			visitor.visit_addition (Current.deep_twin)
		when type_subtract then
			visitor.visit_subtraction (Current.deep_twin)
		when type_and then
			visitor.visit_conjunction (Current.deep_twin)
		when type_or then
			visitor.visit_disjunction (Current.deep_twin)
		when type_equal then
			visitor.visit_equality (Current.deep_twin)
		when type_implies then
			visitor.visit_implication (Current.deep_twin)
		when type_lt then
			visitor.visit_less_than (Current.deep_twin)
		when type_gt then
			visitor.visit_greater_than (Current.deep_twin)
		when type_union then
			visitor.visit_union (Current.deep_twin)
		when type_intersect then
			visitor.visit_intersection (Current.deep_twin)
		when type_difference then
			visitor.visit_difference (Current.deep_twin)
		end
	end

feature -- Commands
	get_current_expression : EXPRESSION
	do
		create {NULL_EXPRESSION}Result.make
		Result := left.get_current_expression
		if not attached {NULL_EXPRESSION}Result as a then
			Result := right.get_current_expression
		end

	end

end

