private
parseContentsFrom: content

	| labels |
	labels := self extractLabelsFrom: content.
	
	^ labels , (content entities values first claims associations collect: [:association | | results |
		results := association value collect: [:property | | value |
			value := property mainsnak.
			self flag: #todo. "This should be extended to a proper type dispatch to hook it into the local object graph --pre"
			((value datatype = 'wikibase-item' and: [value snaktype ~= 'novalue'])
				ifTrue: [self wikiDataUrlForId: value datavalue value id ofType: (value datavalue value at: #'entity-type')]
				ifFalse: [value datatype = 'quantity'
							ifTrue: [value datavalue value amount asNumber]
							ifFalse: [value datavalue value]]) asSurrogate].
		results := results size = 1 ifTrue: [results first] ifFalse: [results].
		association key -> results])
	