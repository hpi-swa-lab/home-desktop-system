data integrity
integrityRules

	^ {
		HomeDataSanityRule new
			description: 'Every person has a firstname and a lastname (not always true but true enough)';
			everyObjectCompliesWith: [:w | (w ? #fullName) notNil].
		HomeCleansingRule new
			description: 'Full names of people do only contain single spaces as separators';
			when: [:p | (p fullName asOrderedCollection overlappingPairsCollect: [:c1 :c2 | c1 isSeparator and: [c2 isSeparator]]) anySatisfy: [:v | v]];
			thenCleanse: [:p | p fullName: (p fullName withSeparatorsCompacted)].
	}