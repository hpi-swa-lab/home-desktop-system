accessing
printOn: aStream

	^ aStream nextPutAll: self plant plantName , ' from ' , 
			(self start asString) , ' to ' , (self end asString)