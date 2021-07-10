*Home-DnD
addMetaFieldsToPart: newPart withName: aName
	| dispositionField contentTypeField |
		dispositionField := newPart fieldNamed: 'content-disposition' 
			ifAbsent: [self error: 'Should be initialized by now'].
		dispositionField parameterAt: 'filename' put: '"' , aName , '"'.
		
		contentTypeField := newPart fieldNamed: 'content-type' 
			ifAbsent: [self error: 'Should be initialized by now'].
		contentTypeField parameterAt: 'name' put: '"' , aName , '"'.