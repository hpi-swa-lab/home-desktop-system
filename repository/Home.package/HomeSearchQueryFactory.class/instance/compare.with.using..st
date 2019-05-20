conditions
compare: expected with: actual using: binarySelector

	^ HomeSearchComparison new
		expected: expected;
		actual: actual;
		comparator: binarySelector;
		yourself