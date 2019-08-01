objectItem-getting
getTextFromInnerMorphs

	| offset text |
	text := self text asString.
	
	offset := 0.
	self text runs withStartStopAndValueDo: [:start :stop :attributes | attributes
		select: [:each | each isKindOf: TextAnchor] 
		thenDo: [:each | | replacementText |
			replacementText := self separator, each anchoredMorph getDisplayedObjectAttributeAsString, self separator.
			text := text copyReplaceFrom: start + offset to: stop + offset with: replacementText.
			offset := offset + replacementText size - 1]].
	
	^ text