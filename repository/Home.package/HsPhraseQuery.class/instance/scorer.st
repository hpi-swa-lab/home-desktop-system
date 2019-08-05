scorer
scorer

	^ HsPhraseScorer new
		value: self value searchTerms;
		fuzziness: self fuzziness;
		yourself