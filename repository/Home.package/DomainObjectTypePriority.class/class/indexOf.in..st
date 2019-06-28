accessing
indexOf: typeObject in: prio
	typeObject ifNil: [^ 0].
	(Types includes: typeObject) ifFalse: [Types add: typeObject].
	(prio includes: typeObject) ifTrue: [^ prio indexOf: typeObject].
	^ prio size + (Types indexOf: typeObject)