actions
SelectionQuery: thisNode with: leftBrackets with: source with: rightBrackets

	^ HsSelectionQuery method: (self compile: (source interval contents))