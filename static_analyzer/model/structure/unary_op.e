note
	description: "Summary description for {UNARY_OP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNARY_OP

inherit
	COMPOSITE_EXPRESSION
	redefine
		add_operation, evaluate,accept
	end
create
	make

feature -- Commands
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Operator Expression RPAREN
			expression_list.put_i_th (create {LPAREN},1)
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RPAREN})

		end
	evaluate :STRING
	local
		i : INTEGER
	do
		-- should return the operator and the corresponding expression output

		Result:= ""
		-- Negative
			-- Take the corresponding 'expression' and make it the
			-- negative of what it was
			if attached {NEGATIVE}expression_list.at (2) as n then
				i := expression_list.at (3).evaluate.to_integer*-1
				Result.append (i.out)
			end
		-- Sum	
			-- of set of integer expressions
			if attached {SUM}expression_list.at (2) as sum then
                --Then this one should be of type SET_ENUMERATION
                if attached {SET_ENUMERATION}expression_list.at (3) as set_enum then
                	Result.append(set_enum.evaluate_sum)
                end
			end
		-- For all
			-- Conjunction (over set of boolean)
			if attached {FORALL}expression_list.at (2) as sum then
                --Then this one should be of type SET_ENUMERATION
                if attached {SET_ENUMERATION}expression_list.at (3) as set_enum then
                	Result.append(set_enum.evaluate_conjunction)
                end
			end
		-- Exists
			-- Disjunction (over set of boolean)
			if attached {EXISTS}expression_list.at (2) as sum then
                --Then this one should be of type SET_ENUMERATION
                if attached {SET_ENUMERATION}expression_list.at (3) as set_enum then
                	Result.append(set_enum.evaluate_disjunction)
                end
			end
		-- Negation
			-- over logical expression
			if attached {NEGATION}expression_list.at (2) as sum then
                --Then this one should be of type SET_ENUMERATION
                if attached {BOOLEAN_CONSTANT}expression_list.at (3) as bool_const then
                	bool_const.set_boolean_constant (not bool_const.evaluate.to_boolean)
                	Result.append(bool_const.evaluate)
                end
			end

	end
feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION) :STRING

	do
		--Result.make_empty
		Result:= visitor.visit (Current)
	end

end
