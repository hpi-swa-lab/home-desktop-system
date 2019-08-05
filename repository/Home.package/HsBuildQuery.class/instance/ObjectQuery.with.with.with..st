actions
ObjectQuery: thisNode with: leftParan with: code with: rightParan

	^ HsObjectQuery fromMethod: (self compile: (code interval contents))