private
candidateClasses

	| candidates |
	candidates := Collection allSubclasses select: [:class |
		(class selectors includes: #objectEditorAdd:) and: [class isAbstract not]].
	candidates := candidates difference: {Object}.
	^ candidates