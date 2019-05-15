serialized grammar
serializedGrammar

	^ 'ObjectSearchQuery <: OhmSmalltalk {
	RootObjectFilter =
		ConditionAggregation
		| ObjectFilter
		| Words
	
	Words =
		any*
	
	ObjectFilter =
		"{" ConditionAggregation "}"

	Condition =
		NestedCondition
		| NegatedCondition
		| AttributeCondition
		| CustomCondition

	ConditionAggregation =
		ConditionConjunction
		| ConditionDisjunction
	
	aggregationOperator =
		disjunctionOperator
		| conjunctionOperator
	
	ConditionDisjunction = 
		Condition (disjunctionOperator Condition)*
	
	disjunctionOperator =
		"|" | "or" | "OR"
	
	ConditionConjunction =
		Condition (conjunctionOperator Condition)*
	
	conjunctionOperator =
		"," | "&" | "and" | "AND" | space*
	
	NestedCondition =
		"(" ConditionAggregation ")"
	
	NegatedCondition =
		negationOperator Condition
		
	negationOperator =
		"-" | "not" | "NOT"
	  
	AttributeCondition =
		Attribute ":" AttributeValue -- similar
		| Attribute "==" AttributeValue -- identical
		| Attribute "=" AttributeValue -- equal
	
	CustomCondition =
		CodeBlock
	
	CodeBlock =
		"[" ExecutableCode "]"
	    
	Attribute =
		UnaryMessageSelector
	    
	AttributeValue =
		Literal
		| CodeBlock
}'