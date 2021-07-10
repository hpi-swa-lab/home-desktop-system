*Home-Database
instantiateFromJsonDocument: json

	| instance |
	self isVariable ifTrue: [ | values |
		values := json at: 'json_values'.
		instance := self basicNew: values size.
		values withIndexDo: [:val :i | instance basicAt: i put: val ].
	] ifFalse: [ instance := self basicNew ].	
	self allInstVarNames do: [:instVarName |
		json at: instVarName ifPresent: [:val |
			(val isDictionary) ifTrue: [
				| innerObjectClassName innerObjectClass |
				innerObjectClassName := val at: 'sq_class' ifAbsent: #Dictionary.
				innerObjectClass := Smalltalk at: innerObjectClassName asSymbol.
				val := (innerObjectClass instantiateFromJsonDocument: val)].
			instance instVarNamed: instVarName put: val ]].
	^ instance