scorer
scorer

	^ HsPhraseTerm new
		value: self value asString;
		fuzziness: self fuzziness;
		yourself