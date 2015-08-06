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
		add_operation, evaluate,accept,make
	end
create
	make
feature -- Constructor
	make
	do
		create {ARRAYED_LIST[EXPRESSION]}expression_list.make (0)
		expression_list.extend (create {NULL_EXPRESSION}.make_first)
		create negative create negation create sum create for_all create exists
	end
feature{NONE} -- Internal attributes
	negative : NEGATIVE
	negation : NEGATION
	sum      : SUM
	for_all  : FORALL
	exists   : EXISTS

feature -- Commands
	add_operation(operator : EXPRESSION)
		do
			-- LPAREN Operator Expression RPAREN
			expression_list.put_i_th (create {LPAREN},1)
			expression_list.extend(operator)
			expression_list.extend(create {NULL_EXPRESSION}.make_first)
			expression_list.extend (create {RPAREN})

		end
feature -- Evaluate Queries
	evaluate :STRING
	local
		i : INTEGER
		exp_type : STRING
		expression : EXPRESSION
	do
		-- should return the operator and the corresponding expression output
		create exp_type.make_from_string (expression_list.at(2).evaluate)
		expression := expression_list.at(3)
		Result:= ""
		-- Negative
			-- Take the corresponding 'expression' and make it the
			-- negative of what it was
			if exp_type ~ negative.output then
				Result.append (evaluate_negative(expression))
		-- Sum	
			-- of set of integer expressions
			elseif exp_type ~ sum.output then
                --Then this one should be of type SET_ENUMERATION or a constant
				Result.append (evaluate_sum(expression))
		-- For all
			-- Conjunction (over set of boolean)
			elseif exp_type ~ for_all.output then
                --Then this one should be of type SET_ENUMERATION or a constant
				Result.append (evaluate_conjunction(expression))

		-- Exists
			-- Disjunction (over set of boolean)
			elseif exp_type ~ exists.output then
                --Then this one should be of type SET_ENUMERATION or a constant
				Result.append (evaluate_disjunction(expression))
		-- Negation
			-- over logical expression
			elseif exp_type ~ negation.output then
                --Then this one should be of type SET_ENUMERATION or a constant
				Result.append (evaluate_negation(expression))
			end

	end
feature{NONE} -- Internal Evaluate Queries

	evaluate_sum(expression:EXPRESSION) : STRING
	local
		i : INTEGER
	do
		-- TO DO: we can use the same procedure as was done in 'BINARY_OP'
		-- Take the given input expression. If i is attached as a composite expression
		-- use across expression.to_integer_array as cursor
		-- and then sum up all the items like i := i + cursor.item.out.to_integer
		-- if it is not, then it is simply an integer, in that case we can just do
		-- expression.evaluate
		Result := ""
	end

	evaluate_conjunction(e:EXPRESSION) :STRING
	do
		Result := ""
	end

	evaluate_disjunction(e:EXPRESSION) : STRING
	do
		Result := ""
	end

	evaluate_negative(e:EXPRESSION) : STRING
	do
		Result := ""
	end

	evaluate_negation(e:EXPRESSION) : STRING
	do
		Result := ""
	end


feature -- Test visitor pattern
	accept (visitor : VISIT_EXPRESSION)

	do
		--Result.make_empty
	--	Result:= visitor.visit (Current)
	end

end
