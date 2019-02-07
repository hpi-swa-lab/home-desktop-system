*Home-UI
editorContents
	
	| additionalFields standardFields |
	standardFields := (super editorContents reject: [:w | 
		w label asLowercase isAnyOf: self internalStateNames , #('createdAt')]) sorted.
	additionalFields := (self additionalStateSelectors collect: [ :selector |
		self objectEditorWrapperFor: selector]) sorted.
		
	^ standardFields , additionalFields