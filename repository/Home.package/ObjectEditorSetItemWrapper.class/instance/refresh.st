actions
refresh

	previousValue := (self instance asArray sorted: [:o1 :o2 | o1 printString < o2 printString]) at: index.
	^ previousValue