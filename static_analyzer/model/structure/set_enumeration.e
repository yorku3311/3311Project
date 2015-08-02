note
	description: "Summary description for {SET_ENUMERATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SET_ENUMERATION
inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, evaluate,accept,make
	end
create
	make
feature -- Expression State
	begin_expression : INTEGER = 1
	middle_expression : INTEGER = 2
	end_expression : INTEGER = 3
	expression_state :INTEGER
	current_expression_index : INTEGER
feature -- Constructor redefinition
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		expression_state := begin_expression
		current_expression_index := 3
	end
	set_expression_state(i :INTEGER)
	require
		begin_expression <= i and i <= end_expression
	do
		expression_state := i
	end
feature -- Internal Feautures
	set_current_index (i : INTEGER)
	do
		current_expression_index := i
	end
feature -- Commands
	add_operation (expression : EXPRESSION)
	do
		inspect expression_state
		when begin_expression then
			expression_list.put_i_th (create {LBRACE},1)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RBRACE}) -- this should be overwritten
		when middle_expression then
			expression_list.put_i_th (create {COMMA},current_expression_index)
			expression_list.extend (create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RBRACE})
			set_current_index(expression_list.count)
		when end_expression then
			-- I do not think anything needs to be done here
		end


	end

	evaluate :STRING
	do
		Result := ""
	end

	evaluate_sum : STRING
	do
		Result := ""
	end

	evaluate_conjunction :STRING
	do
		Result := ""
	end

	evaluate_disjunction : STRING
	do
		Result := ""
	end
feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
