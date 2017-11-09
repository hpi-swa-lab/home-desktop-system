as yet unclassified
integrityRules

	^ {
		HomeCleansingRule new
			description: 'Titles should be strings';
			when: [:w | w title isText];
			thenCleanse: [:w | w title: w title asString].
		HomeCleansingRule new
			description: 'Titles of creative works do only contain spaces as separators';
			when: [:w | w title includesAnyOf: {Character tab . Character lf . Character cr}];
			thenCleanse: [:w | w title: (w title copyWithoutAll: {Character tab . Character lf . Character cr})].
		HomeCleansingRule new
			description: 'Titles of creative works do only contain single spaces as separators';
			when: [:w | (w title asOrderedCollection overlappingPairsCollect: [:c1 :c2 | c1 isSeparator and: [c2 isSeparator]]) anySatisfy: [:v | v]];
			thenCleanse: [:w | w title: (w title withSeparatorsCompacted)].
		HomeCleansingRule new
			description: 'Titles of creative works are set in title case';
			when: [:w | w title substrings last first isLowercase ];
			thenCleanse: [:w | w title: (w title )].
		HomeDataSanityRule new
			description: 'Every creative work has a title';
			everyObjectCompliesWith: [:w | (w ? #title) notNil ]
		}