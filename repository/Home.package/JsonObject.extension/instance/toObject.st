*Home-Database
toObject

	| className binding |
	className := self at: 'sq_class' ifAbsent: #Dictionary.
	binding := self class environment bindingOf: className asSymbol.
	binding ifNil: [ ^ self error: 'unable to instantiate - class not found' ].
	^ binding value instantiateFromJsonDocument: self.