as yet unclassified
setColorForObject

	| widgetColor |
	self object
		ifNil: [widgetColor := self defaultColorForObject]
		ifNotNil: [widgetColor := Color fromString: (self object uuid asString first: 6) asSymbol].
	
	self privateParentWidget ifNotNil: [widgetColor := widgetColor alpha: 0.8.
		self privateTextField color: (self privateParentWidget textColor ifNil: [Color black])].
	
	self color: widgetColor