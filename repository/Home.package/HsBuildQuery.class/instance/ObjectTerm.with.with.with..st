actions
ObjectTerm: thisNode with: leftParan with: code with: rightParan

	^ HsObjectTerm fromMethod: (self compile: (code interval contents))