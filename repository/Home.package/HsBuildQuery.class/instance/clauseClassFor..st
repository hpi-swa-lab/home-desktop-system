helpers
clauseClassFor: occurrence

	^ occurrence caseOf: {
		[#must] -> [HsMust].
		[#mustNot] -> [HsMustNot].
		[#filter] -> [HsFilter].
		[#should] -> [HsShould]}