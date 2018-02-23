submorph-creation
openLidVertices
	
	^ {self topLeft + (1@0) . 
		(self left + (self width / 2)) rounded@(self top - (self height / 2)) rounded . 
		self topRight - (1@0) }