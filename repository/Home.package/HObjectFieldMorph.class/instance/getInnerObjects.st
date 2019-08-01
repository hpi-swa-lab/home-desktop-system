objectItem-getting
getInnerObjects
	
	^ self getInnerMorphs collect: [:itemMorph | itemMorph object]