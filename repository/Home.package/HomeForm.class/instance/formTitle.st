constants
formTitle

	^ 'Edit ' , self instanceToEdit class printString , ': ' , 
		(self sourceString isEmptyOrNil 
				ifFalse: [self sourceString] 
				ifTrue: [self instanceToEdit printString])