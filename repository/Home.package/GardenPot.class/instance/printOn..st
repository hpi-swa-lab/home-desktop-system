as yet unclassified
printOn: aStream

	aStream nextPutAll: (self volume asString , 'l' , String space , self material , String space , '#' , self number asString)