note
	description: "Summary description for {UNARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNARY_OP

inherit
	COMPOSITE_EXPRESSION


create
	make, make_negative, make_negation, make_sum, make_forall, make_exists
feature -- Constructor
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		child.set_current_expression (true)
	end
	make_negative
	do
		make
		set_expression_type (type_negative)
	end
	make_negation
	do
		make
		set_expression_type (type_negation)
	end
	make_sum
	do
		make
		set_expression_type (type_sum)
	end
	make_forall
	do
		make
		set_expression_type (type_forall)
	end
	make_exists
	do
		make
		set_expression_type (type_exists)
	end

feature -- Attributes
	child : EXPRESSION
	do
		Result := expression_list.at (1).deep_twin
	end
	set_child (e1 : EXPRESSION)
	do
		expression_list.put_i_th (e1, 1)
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)
	do
		inspect get_expression_type
		when  type_negative then
			visitor.visit_negative (Current.deep_twin)
		when type_negation then
			visitor.visit_negation (Current.deep_twin)
		when type_sum then
			visitor.visit_sum (Current.deep_twin)
		when type_forall then
			visitor.visit_generalized_and (Current.deep_twin)
		when type_exists then
			visitor.visit_generalized_or (Current.deep_twin)
		end




	end

feature -- Commands
	get_current_expression : EXPRESSION
	do
		create {NULL_EXPRESSION}Result.make_first
		if is_current_expression then
			Result := current
		else
			if attached {COMPOSITE_EXPRESSION}child as child_expression then
				Result := child_expression.get_current_expression
			end
		end
	end


	set_by_ref (e : NULL_EXPRESSION)
	do
		if child = e then
			expression_list.put_i_th (e, 1))
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

end
