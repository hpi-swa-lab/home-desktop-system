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
			self initializeEventsFrom: row with: wrapper.
			wrapper -> row]).
		
	wrappersToRows keysDo: [:wrapper | 
		self instance addDependent: wrapper.
		wrapper when: #externalChange send: #updateEditingWidgetFor: to: self].
	