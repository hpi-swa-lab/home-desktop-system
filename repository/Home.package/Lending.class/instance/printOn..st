printing
printOn: aStream

	^ aStream 
		<< 'Lend ' 
		<< self itemDescription 
		<< ' to ' 
		<< self borrower fullName
		<< ' on '
		<< self date asString