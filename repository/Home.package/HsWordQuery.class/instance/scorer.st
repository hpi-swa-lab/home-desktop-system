scorer
scorer

	^ HsWordScorer new
		value: self value searchTerms first;
		fuzziness: self fuzziness;
		yourself