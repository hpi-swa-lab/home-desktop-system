as yet unclassified
named: name values: values of: obj
	^ self new
		displayName: name;
		values: (values collect: [:nameAndValue | nameAndValue name asSymbol -> nameAndValue value]);
		typeSymbol: obj class name asSymbol;
		yourself