accessing
emailAddresses

	^ self 
		answer: #emailAddress 
		or: [((((self ? #participants) collect: [:p | p ? #email]) reject: #isNil) joinSeparatedBy: ',')]