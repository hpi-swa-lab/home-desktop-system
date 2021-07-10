private
initializeEventsFrom: aRow with: aWrapper
	
	aRow when: #objectDropped evaluate: [:obj | 
		self commandHistory rememberCommand: (aWrapper setValueUndoCommand: obj).
		aWrapper setValueTo: obj].
	aRow when: #deleteRequested evaluate: [ 
		(UIManager default confirm: ('Do you really want to delete {1}?' format: {aWrapper label}))
			ifTrue: [
			self commandHistory rememberCommand: aWrapper removeFieldUndoCommand.
			"works with Slot wrapper dunno what happens with other wrappers"
				
				aWrapper removeField. self renewFields]].
	aRow when: #initializeRequested evaluate: [
		aWrapper initializeField].
	aRow when: #objectEditorAdd evaluate: [
		self renewFields].
	aRow when: #addCollection evaluate: [:obj | 
		self commandHistory rememberCommand: (aWrapper setValueUndoCommand: obj).
		aWrapper setValueTo: obj].
	