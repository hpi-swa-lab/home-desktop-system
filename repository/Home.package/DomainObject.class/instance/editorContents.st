*Home-UI
editorContents
	
	| additionalFields standardFields |
	standardFields := (super editorContents reject: [:w | 
		w itemName isAnyOf: #('additionalState' 'createdAt')]) sorted.
	additionalFields := (self additionalStateSelectors collect: [ :selector |
		self objectEditorWrapperFor: selector]) sorted.
		
	^ standardFields , additionalFields