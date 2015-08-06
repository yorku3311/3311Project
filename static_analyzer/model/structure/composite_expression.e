note
	description: "Summary description for {COMPOSITE_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
deferred class
	COMPOSITE_EXPRESSION

inherit
	EXPRESSION


--create
--	make
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
		across expression_list as cursor
		loop
			Result.append (cursor.item.output)
		end
	end

evaluate : STRING
	do
		-- Evaluate the given expression.
		create Result.make_empty
		across expression_list as cursor
		loop
			Result.append (cursor.item.evaluate)
		end
	end

feature{COMPOSITE_EXPRESSION} -- String conversion to a set of arithmatic/logical expressions

to_parsed_string (expression_out : STRING) :ARRAYED_LIST[STRING]
	-- parse the input expression into a set of distinct strings. ex: takes {1,2,3} and outputs elements
	-- '1', '2', '3' as string representation in a arrayed list
local
	temp_string : STRING
	lparen :LPAREN
	rparen :RPAREN
	lbrace :LBRACE
	rbrace :RBRACE
	comma : COMMA

do
	create Result.make (0)
	create lparen create lbrace create rparen create rbrace create comma
	create temp_string.make_empty

	across expression_out as cursor
	loop

		-- make sure we do not add {,(,),} symbols
		if not (cursor.item.out ~ lparen.output or cursor.item.out ~ rparen.output
		or cursor.item.out ~ lbrace.output or cursor.item.out ~ rbrace.output ) then
			-- if we have not seen a ',' then we continue adding to temp_string
			if not (cursor.item.out ~ comma.output) then
				temp_string.append (cursor.item.out)
			else
				-- add it to the array of strings then clear what ever was there before.
				Result.extend (temp_string)
				create temp_string.make_empty
			end
		end
	end
	if not temp_string.is_empty then
		Result.extend(temp_string)
	end

end

to_integer_array  : ARRAYED_LIST[DIGIT]
	-- takes the current expression and converts it to a integer array of digits
local
	digit : DIGIT
do

	create Result.make (0)
	-- now the parsing is done we just have to convert it to a list of digits
	across to_parsed_string(Current.evaluate) as cursor
	loop
		create digit.make_digit (cursor.item.to_integer)
		Result.extend (digit)
	end
end

to_boolean_array : ARRAYED_LIST[BOOLEAN_CONSTANT]
	-- takes the current expression and converts it to a boolean array of boolean constants
local
	bool_constant : BOOLEAN_CONSTANT
do

	create Result.make (0)
	create bool_constant.make
	-- now the parsing is done we just have to convert it to a list of digits
	across to_parsed_string(Current.evaluate) as cursor
	loop
		bool_constant.set_boolean_constant (cursor.item.to_boolean)
		Result.extend (bool_constant)
	end
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
		is_set := set_first_null
	end
	set_first_null :BOOLEAN
		--sets the next null item found to '?'. Returns false if no '?' found
		-- this would be useful for checking if th expression is complete.
		-- also needed for the recursive calls.
	do
		expression_list.go_i_th (0)
	from
		expression_list.forth
	until
		Result or expression_list.after
	loop
			if attached {NULL_EXPRESSION}expression_list.item as c then
				expression_list.put_i_th (create {NULL_EXPRESSION}.make_first,expression_list.index)
				Result := true
			elseif attached {COMPOSITE_EXPRESSION}expression_list.item as b then
				Result :=b.set_first_null
			end
			expression_list.forth

		end
	end
feature -- Special Commands
	add_operation(expression : EXPRESSION)
	-- this will be done by either BINARY_OP, UNARY_OP, SET_ENUMERATION
	do
	end

	end_set_enumeration
	-- ends the current enumeration that is open
	local
		dummy_bool : BOOLEAN
	do
		across expression_list as cursor
		loop
			if attached {COMPOSITE_EXPRESSION} cursor.item as comp_exp then
				comp_exp.end_set_enumeration
			end
		end
		dummy_bool := set_first_null
	end

feature --testing the visitor pattern
	-- this is dynamically binded it should go to either printing, evaluation,
	-- or type check



end



