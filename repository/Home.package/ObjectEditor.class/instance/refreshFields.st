fields
refreshFields

	wrappersToRows keysDo: [:wrapper | self instance removeDependent: wrapper].

	"The following also protects the wrappers form GC --pre"
	wrappersToRows := Dictionary newFrom: ( 
		self instance editorContents collect: [:wrapper | | row |
			row := ObjectEditorLine new.
			self updateLabelIn: row for: wrapper.
			self updateEditingWidgetIn: row for: wrapper. 
			self addMorphBack: row.
			row when: #objectDropped evaluate: [:obj |
				wrapper setValueTo: obj].
			row when: #deleteRequested evaluate: [
				(UIManager default confirm: ('Do you really want to delete {1}?' format: {wrapper label}))
					ifTrue: [wrapper removeField. self renewFields]].
			row when: #initializeRequested evaluate: [
				wrapper initializeField].
			wrapper -> row]).
		
	wrappersToRows keysDo: [:wrapper | 
		self instance addDependent: wrapper.
		wrapper when: #externalChange send: #updateEditingWidgetFor: to: self].
	