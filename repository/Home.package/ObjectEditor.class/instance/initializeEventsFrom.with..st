private
initializeEventsFrom: aRow with: aWrapper

	aRow when: #objectDropped evaluate: [:obj |
				aWrapper setValueTo: obj].
	aRow when: #deleteRequested evaluate: [
		(UIManager default confirm: ('Do you really want to delete {1}?' format: {aWrapper label}))
			ifTrue: [aWrapper removeField. self renewFields]].
	aRow when: #initializeRequested evaluate: [
		aWrapper initializeField].
	aRow when: #objectEditorAdd evaluate: [
		self renewFields].