document-api
documentToObject: json

	| className binding |
	className := json at: 'sq_class'.
	binding := self class environment bindingOf: className asSymbol.
	binding ifNil: [ ^ self error: 'unable to instantiate - class not found' ].
	^ binding value instantiateFromJsonDocument: json.