scorer
scorer

	^ HsTextScorer new
		value: self value asString;
		fuzziness: self fuzziness;
		yourself