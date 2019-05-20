accessing
factory

	^ factory ifNil: [factory := HomeSearchQueryFactory new]