printing
printOn: aStream

	^ aStream 
		<< 'Lend ';
		<< (self itemDescription ifNil: '');
		<< ' to '; 
		<< (self borrower ifNil: '' ifNotNil: [:p | p fullName]);
		<< ' on ';
		<< (self date asString ifNil: '')