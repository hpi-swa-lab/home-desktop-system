converting
labelFrom: aSymbol

	| parts |
	parts := self splitIdentifier: aSymbol asString.
	^ (parts joinSeparatedBy: String space) capitalized