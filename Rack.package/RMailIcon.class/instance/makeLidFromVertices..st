submorph-creation
makeLidFromVertices: vertices

	lidMorph ifNotNilDo: [:m | m abandon].
	lidMorph := PolygonMorph 
			vertices: vertices
			color: Color white
			borderWidth: 1 "px"
			borderColor: Color black.
	lidMorph makeClosed.
	self addMorph: lidMorph.