editing
edit

	<rackOperationLabel: 'edit' inContextMenus: true>

	^ UIManager default 
		editMarkdown: self content 
		label: 'Diary Entry: ' , self date asString 
		accept: [:value |
			value asString ifNotEmptyDo: [:string| string first isDigit ifTrue: [
				self date: value asString lines first asDate]].
			self content: value]