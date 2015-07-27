note
	description: "Summary description for {COMPOSITE_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
class
	COMPOSITE_EXPRESSION

inherit
	EXPRESSION

create
	make
feature -- Constructor
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
	end

feature{NONE} -- Auxillary Attributes
	expression_list : ARRAYED_LIST[EXPRESSION]

feature -- Queries
output : STRING
	do
		-- Go thru the arrayed list and print everything out
		create Result.make_empty
		expression_list.go_i_th (0)
		from
			expression_list.forth
		until
			expression_list.after
		loop
			Result.append(expression_list.item.output)
			expression_list.forth
		end
	end

evaluate : STRING
	do
		-- Evaluate the given expression.
		Result:= ""
	end
feature -- Commands
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
	end
	set_first_null :BOOLEAN
		--sets the next null item found to '?'
	do
		expression_list.go_i_th (0)
	from
		expression_list.forth
	until
		Result or expression_list.after
	loop
			if attached {NULL_EXPRESSION}expression_list.item as c then
				expression_list.put_i_th (create {NULL_EXPRESSION}.make_first,expression_list.index)
				--expression_list.go_i_th (expression_list.count)
				Result := true
			elseif attached {COMPOSITE_EXPRESSION}expression_list.item as b then
				Result :=b.set_first_null
			end
			expression_list.forth

		end
	end

	add_operation(expression : EXPRESSION)
	do
	end

end



