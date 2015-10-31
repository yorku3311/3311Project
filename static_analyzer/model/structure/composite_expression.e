note
	description: "Summary description for {COMPOSITE_EXPRESSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
deferred class
	COMPOSITE_EXPRESSION

inherit
	EXPRESSION


feature{NONE} -- Auxillary Attributes
	expression_list : ARRAYED_LIST[EXPRESSION]

feature -- Command
	set_by_ref (e : NULL_EXPRESSION)
	deferred

	end




end



