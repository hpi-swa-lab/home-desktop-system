querying
scorer

	^ HsFieldScorer new
		term: self term scorer;
		fieldName: self fieldName;
		yourself