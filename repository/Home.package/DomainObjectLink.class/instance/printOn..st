printing
printOn: aStream

	^ aStream 
		<< self label
		<< ' (link)' 