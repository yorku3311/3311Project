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
		add_operation, evaluate,accept,make,add,end_set_enumeration
	end
create
	make
feature -- Expression State
	begin_expression : INTEGER = 1
	middle_expression : INTEGER = 2
	end_expression : INTEGER = 3
	is_current_expression : BOOLEAN
	is_current_expression_closed : BOOLEAN
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
feature -- Modify the state of the enumeration
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
			is_current_expression := TRUE
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
			is_current_expression := FALSE
		end


	end

	end_set_enumeration
	local
		b : BOOLEAN
	do
		if is_current_expression then
			expression_state := end_expression
			is_current_expression := false
			add_operation (create {NULL_EXPRESSION}.make_first)
			is_current_expression_closed := true
		else
			across expression_list as c
			loop
				if attached {COMPOSITE_EXPRESSION} c.item as comp_exp then
					comp_exp.end_set_enumeration
				end
			end
			b := set_new_current_expression
			end
	end
	set_new_current_expression:BOOLEAN
		-- sets the new current expression
	do
		across expression_list as cursor
	    loop
	    	if attached {SET_ENUMERATION}cursor.item as a then
				Result := a.set_new_current_expression
			end
	    end
	    if not is_current_expression_closed then
	    	if not Result then
				is_current_expression := true
				expression_state := middle_expression
				add_operation(create {NULL_EXPRESSION}.make_first)
		    else
				is_current_expression := false
				expression_state := middle_expression
	    	end

	    end



	end
	-- sample for end_set_enumeration
	-- if second last expression in list is '?' then we are in current
	-- set the expression state for this to end expression
	-- originally this should have been the current expression. now set to false
	-- use add_operation to put close brackets
	-- set the next one in line to be the current expression
	-- update with add_operation

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
		-- set the current expression to false if adding an enumeration
		expression_list.go_i_th (0)
		if attached {SET_ENUMERATION}expression as set_enum then
			is_current_expression := false
		end
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
		if not is_set and not is_current_expression_closed then
			add_operation (create {NULL_EXPRESSION}.make_first)
		end
	end

feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
