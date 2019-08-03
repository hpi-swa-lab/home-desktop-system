querying
scorer

	^ self isFielded
		ifTrue: [
			 HsSingleFieldScorer new
				query: self query scorer;
				fieldName: self fieldName;
				yourself]
		ifFalse: [
			HsAnyFieldScorer new
				query: self query scorer;
				yourself]