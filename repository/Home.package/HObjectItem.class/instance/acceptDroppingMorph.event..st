as yet unclassified
acceptDroppingMorph: aMorph event: evt

	| potentiallyWantedObject |
	potentiallyWantedObject := aMorph passenger.
	
	(self wantedObjectAttribute isNil not and: [(potentiallyWantedObject respondsTo: self wantedObjectAttribute) not])
		ifTrue: [UIManager default inform: 'Does not have required attribute: ', self wantedObjectAttribute asString.
			^ self].

	self display: potentiallyWantedObject