integrity
ensureModelIntegrityAfterSetting: aValue on: anObject

	self symmetricPartnerRelation ifNotNil: [:s | | partnerRelation targets |
		partnerRelation := self class for: self symmetricPartnerRelation.
		self targetCardinality = self class many 
			ifTrue: [targets := aValue]
			ifFalse: [targets := {aValue}].
		targets do: [:target | 
			partnerRelation targetCardinality = self class many
				ifTrue: [
					(partnerRelation valueOf: target) 
						ifNil: [partnerRelation setValue: (OrderedCollection with: anObject) on: target]
						ifNotNil: [:tsValues |
							(tsValues includes: anObject) ifFalse: [
								partnerRelation setValue: tsValues , {anObject} on: target]]]
				ifFalse: [self halt]]]