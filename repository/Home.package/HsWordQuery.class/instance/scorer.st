scorer
scorer

	^ HsWordScorer new
		value: self value searchWords first;
		fuzziness: self fuzziness;
		yourself