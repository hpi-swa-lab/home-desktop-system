as yet unclassified
setDone

	self borderColor: Color gray darker.

	self addMorph: (PolygonMorph new
		setVertices: {self topLeft + (5@5) . 
			self bottomCenter - (0@5) . 
			self topRight + (5@ -5) };
		lineColor: Color lime;
		lineWidth: 3 "px";
		makeOpen;
		yourself)