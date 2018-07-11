data integrity
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
		HomeCleansingRule new
			description: 'Authors are people also';
			when: [:w | (w ?? #authors) anySatisfy: [:a | (a isKindOf: Person) not] ];
			thenCleanse: [:w | w authors: (w authors collect: [:a | a isString ifTrue: [Person resolve: a] ifFalse: [a]])].
		HomeDataSanityRule new
			description: 'Every creative work has a title';
			everyObjectCompliesWith: [:w | (w ? #title) notNil ].
		HomeDataSanityRule new
			description: 'Creative work authors are people';
			everyObjectCompliesWith: [:w | (w ?? #authors) allSatisfy: [:a | a isKindOf: Person]].
		HomeCleansingRule new
			description: 'Every creative work has a referenceKey';
			when: [:w | ((w has: #referencekey) or: [w has: #referenceKey]) not];
			thenCleanse: [:w | w referenceKey: (w swaBibTexReferenceKey)].
		HomeDataSanityRule new
			description: 'Every creative work has a publicationDate';
			everyObjectCompliesWith: [:w | w has: #publicationDate].
		HomeDataSanityRule new
			description: 'Journals represented by their title should not be abreviated';
			everyObjectCompliesWith: [:w | ((w has: #journal) and: [w journal isString]) ==> [(w journal includesAnyOf: '.') not]]
		}