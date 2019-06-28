layout
acceptDroppingMorph: aMorph event: evt

	| potentiallyWantedObject |
	potentiallyWantedObject := aMorph passenger.
	
	self potentiallyDisplay: potentiallyWantedObject