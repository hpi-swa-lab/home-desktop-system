accessing
objectString

	^ objectString ifNil: [objectString := self object asString]