scorer
scorer

	^ HsObjectScorer new
		value: self value;
		fuzziness: self fuzziness;
		yourself