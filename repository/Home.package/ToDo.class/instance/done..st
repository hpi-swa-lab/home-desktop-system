accessing
done: anObject

	done := anObject. 
	done  
		ifTrue: [self setToDone: DateAndTime now]
		ifFalse: [self setToDone: nil]