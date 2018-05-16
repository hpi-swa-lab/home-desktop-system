as yet unclassified
openOn: anObject

	| scollArea editor |
	editor := (self for: anObject).
	scollArea := PHScrollArea new
		policy: #(show scroll);
		content: editor;
		extent: editor extent;
		yourself.
	^ scollArea openInWindowLabeled: 'Editor on ', anObject printString