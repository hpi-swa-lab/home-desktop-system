building
buildEditorTextMorphWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		setText: #markdownText:;
		getText: #markdownText;
		stylerClass: MarkdownBlockTextStyler;
		yourself
	