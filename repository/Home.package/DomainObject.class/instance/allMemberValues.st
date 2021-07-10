accessing
allMemberValues
	^ self allMemberKeys collect: [:key | key -> (self attributeValue: key)]