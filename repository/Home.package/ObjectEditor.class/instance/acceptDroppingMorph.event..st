drag and drop
acceptDroppingMorph: aMorph event: evt

	(self instance isKindOf: Collection) ifTrue: [
		 	self commandHistory rememberCommand: (self addToCollectionUndoCommand: aMorph passenger).
			self instance objectEditorAdd: aMorph passenger]
		ifFalse: [
			| chosenOperation |
			chosenOperation := UIManager default
				chooseFrom: #('Make new collection' 'add Realtion')
				title: 'Choose Operation'.
	
			(chosenOperation == 1) ifTrue: [ | newCollection |
				newCollection := (OrderedCollection new) 
									objectEditorAdd: self instance;
				 					objectEditorAdd: aMorph passenger.
					self triggerEvent: #addCollection with: newCollection].
			(chosenOperation == 2) ifTrue: [instance objectEditorAdd: aMorph passenger.].].
	
	self badge resetBorder.