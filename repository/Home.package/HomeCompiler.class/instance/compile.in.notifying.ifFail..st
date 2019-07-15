public access
compile: textOrStream in: aClass notifying: requestor ifFail: failBlock
		
	| newCode |
	newCode := self transformCode: textOrStream asString class: aClass.
	
	^ super compile: newCode in: aClass notifying: requestor ifFail: failBlock