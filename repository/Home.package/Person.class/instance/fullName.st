accessing
fullName

	^ (self firstname ifNil: ['']) , ' ' , (self lastname ifNil: [''])