serialization
asSwaBibtexString

	| publicationType referenceKey fields fieldsString fieldTemplate |
	publicationType := self bibTexPublicationType.
	referenceKey := self swaBibTexReferenceKey.
	
	fieldTemplate := '{1} = \{{2}\}'.
	fields := self bibTexFields.
	fieldsString := (fields collect: [:association |
		fieldTemplate format: {association key . association value}]) asArray
		joinSeparatedBy: ', ' , String crlf.
	
	^'@{1}\{{2},
{3}
\}' format: {publicationType . referenceKey . fieldsString}