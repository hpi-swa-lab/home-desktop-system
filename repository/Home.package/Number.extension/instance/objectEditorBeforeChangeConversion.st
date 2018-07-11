*Home-UI
objectEditorBeforeChangeConversion

	^ [:object | (object isString or: [object isText]) 
					ifTrue: [Number readFrom: object asString]]