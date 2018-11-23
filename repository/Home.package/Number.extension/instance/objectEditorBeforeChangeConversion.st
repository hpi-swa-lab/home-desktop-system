*Home-UI
objectEditorBeforeChangeConversion

	^ [:object | 
		object isEmptyOrNil
			ifTrue: [0]
			ifFalse: [(object isString or: [object isText]) 
						ifTrue: [Number readFrom: object asString]]]