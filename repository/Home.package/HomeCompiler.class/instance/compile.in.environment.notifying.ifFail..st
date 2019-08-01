public access
compile: textOrStream in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 
		
	| newCode |
	newCode := self transformCode: textOrStream asString class: aClass.
	
	^ super compile: newCode in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 