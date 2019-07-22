scoring
score: anObject

	^ anObject fields
		inject: 0
		into: [:score :field |
				score + (self scoreField: field)]