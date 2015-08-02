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
		add_operation, evaluate,accept,make,add,end_enumeration
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
feature{NONE} -- Internal Feautures
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
			expression_state := middle_expression
		when middle_expression then
			expression_list.put_i_th (create {COMMA},current_expression_index)
			expression_list.extend (create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RBRACE})
			set_current_index(expression_list.count)
		when end_expression then
			-- Delete the last middle expression
			expression_list.go_i_th (expression_list.count-2)
			expression_list.remove
			expression_list.remove
			expression_list.remove
			expression_list.extend (create {RBRACE})
		end


	end
	end_enumeration
	local
		n : NULL_EXPRESSION
	do
		create n.make_first
		-- check to see if there are other enumerations present atm
		if expression_list.at (expression_list.count-1).output ~ n.output then
			expression_state := end_expression
		else
			expression_list.go_i_th (0)
			from
				expression_list.forth
			until
				expression_list.after
			loop
				if attached {COMPOSITE_EXPRESSION} expression_list.item as comp_exp then
					comp_exp.end_enumeration
				end
				expression_list.forth
			end
			expression_state := middle_expression
		end

		    add_operation (create {NULL_EXPRESSION}.make)

	end

feature -- Evaluation Commands

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

feature -- Override add operation
	add (expression : EXPRESSION)
		--extend to the first 'NULL_EXPRESSION' that is found
	local
		is_set :BOOLEAN
	do
		expression_list.go_i_th (0)
	from
		expression_list.forth
	until
		is_set or expression_list.after
	loop
			if attached {NULL_EXPRESSION}expression_list.item as c then
				if c.is_current then
					expression_list.put_i_th (expression,expression_list.index)
					is_set := true
				end
				-- update the next 'NULL_EXPRESSION'
			elseif attached {COMPOSITE_EXPRESSION}expression_list.item as b then
				b.add(expression)
			end
			expression_list.forth

		end
		is_set := set_first_null
		if not is_set then
			add_operation (create {NULL_EXPRESSION}.make)
		end
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
