accessing
indexOf: typeObject
	typeObject ifNil: [^ 0].
	(Types includes: typeObject) ifFalse: [Types add: typeObject].
	^ Types indexOf: typeObject