scorer
scorer

	^ HsPhraseScorer new
		value: self value searchWords;
		fuzziness: self fuzziness;
		yourself