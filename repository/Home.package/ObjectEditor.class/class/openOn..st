as yet unclassified
openOn: anObject

	| scollArea editor badge area |
	badge := ObjectBadge for: anObject.
	editor := self for: anObject.
	area := PHPage column
		add: badge;
		add: editor.
	scollArea := PHScrollArea new
		policy: #(show scroll);
		content: area;
		extent: editor extent;
		yourself.
	^ scollArea openInWindowLabeled: 'Editor on ', anObject printString