printing
printOn: aStream

	^ aStream 
		<< 'Lend ';
		<< (self itemDescription ifNil: '');
		<< ' to '; 
		in: [:stream | (self borrower ifNil: '' ifNotNil: [:p | p printOn: stream ])];
		<< ' on ';
		<< (self date asString ifNil: '')