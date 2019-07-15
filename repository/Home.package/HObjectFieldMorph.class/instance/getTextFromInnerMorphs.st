as yet unclassified
getTextFromInnerMorphs

	| offset text |
	text := self text asString.
	
	"replace all object items"
	offset := 0.
	self text runs withStartStopAndValueDo: [:start :stop :attributes | attributes
		select: [:each | each isKindOf: TextAnchor] 
		thenDo: [:each | | replacementText |
			replacementText := ' ', each anchoredMorph getWantedObjectAttributeAsString, ' '.
			text := text copyReplaceFrom: start + offset to: stop + offset with: replacementText.
			offset := offset + replacementText size - 1]].
	
	^ text