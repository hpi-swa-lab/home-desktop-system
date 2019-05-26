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
		Attribute comparator AttributeValue
		
	comparator =
		":" | "==" | "="
	
	CustomCondition =
		CodeBlock
	
	CodeBlock =
		"[" ExecutableCode "]"
	    
	Attribute =
		UnaryMessageSelector
	    
	AttributeValue =
		constantReference
		| scaledDecimalLiteral
		| floatingPointLiteral
		| integerLiteral
		| characterLiteral
		| stringLiteral
		| symbolLiteral
		| ArrayLiteral
		| CodeBlock
}'