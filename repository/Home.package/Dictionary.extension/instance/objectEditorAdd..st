*Home-UI
objectEditorAdd: anObject

	| enteredKey |
	enteredKey := UIManager default request: 'Under which key do you want to store the information?'.
	enteredKey isEmptyOrNil ifTrue: [^ self].
	
	(self keys includes: enteredKey) ifTrue: [
		(UIManager default 
			confirm: 'Do you want to override the field ' , enteredKey , '?')
				ifFalse: [^ self]].
			
	self at: enteredKey asSymbol put: anObject.
	
	self changed.
	self triggerEvent: #objectEditorStructureChanged.