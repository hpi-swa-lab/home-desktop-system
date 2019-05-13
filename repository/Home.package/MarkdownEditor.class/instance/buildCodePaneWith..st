toolbuilder
buildCodePaneWith: builder
	
	| spec |
	spec := super buildCodePaneWith: builder.
	spec stylerClass: SHTextStylerMarkdown. 
	^ spec