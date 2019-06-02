conditions
compare: expected withAllUsing: binarySelector

	^ HomeSearchAllComparison new
		expected: expected;
		comparator: binarySelector;
		yourself