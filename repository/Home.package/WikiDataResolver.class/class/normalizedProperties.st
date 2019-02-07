as yet unclassified
normalizedProperties

	| onlyAlnum parts |
	^ NamesToProperties ifNil: [NamesToProperties := Dictionary newFrom: (self propertiesDictionary associations collect: [:assoc |
		onlyAlnum := assoc value select: [:c | c isSeparator or: [c isAlphaNumeric]].
		parts := onlyAlnum splitBy: ' '.
		((parts collect: [:part | part asLowercase capitalized]) joinSeparatedBy: '') withFirstCharacterDownshifted -> assoc key])]