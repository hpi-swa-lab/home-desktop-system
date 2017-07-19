*Rack
worldIconText

	^ self archiveName isEmptyOrNil 
		ifFalse: ['Mails for ' , self archiveName]
		ifTrue: [super worldIconText]