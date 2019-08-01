scorer
scorer

	^ HsPhraseScorer new
		value: self value asString;
		fuzziness: self fuzziness;
		yourself