note
	description: "Summary description for {EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EXPRESSION

feature {NONE} -- Internal
	expression_type : INTEGER
feature -- Queries

	accept (visit : VISIT_EXPRESSION)
	deferred
	end

feature -- Attributes
	type_add : INTEGER = 1
	type_subtract : INTEGER = 2
	type_times : INTEGER = 3
	type_divides : INTEGER = 4
	type_and : INTEGER = 5
	type_or : INTEGER = 6
	type_implies : INTEGER = 7
	type_equal : INTEGER = 8
	type_gt : INTEGER = 9
	type_lt : INTEGER = 10
	type_union : INTEGER = 11
	type_intersect : INTEGER = 21
	type_difference : INTEGER = 12
	-- unary
	type_negative : INTEGER = 13
	type_negation : INTEGER = 14
	type_sum : INTEGER = 15
	type_forall : INTEGER = 16
	type_exists: INTEGER = 17
	-- set
	type_set : INTEGER = 18
	-- integer
	type_integer_constant : INTEGER = 19
	-- boolean
	type_boolean_constant : INTEGER = 20
	type_null_first : INTEGER = 22
	type_null_remaining : INTEGER = 23

feature-- Internal
	is_current_expression : BOOLEAN
feature -- Expression Type

	set_expression_type (i : INTEGER)
	do
		expression_type := i
	end
	get_expression_type : INTEGER
	do
		Result := expression_type
	end

	set_current_expression ( b : BOOLEAN)
	do
		is_current_expression := b
	end

	get_current_expression : EXPRESSION
	deferred
	end










end
