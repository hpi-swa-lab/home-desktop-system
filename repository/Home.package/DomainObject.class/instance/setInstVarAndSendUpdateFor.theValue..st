generic-observer
setInstVarAndSendUpdateFor: instVarName theValue: value 

	self instVarNamed: instVarName put: value.
	(#(currentInStorage lastChanged) includes: instVarName) ifFalse: [
		self noteChangeOf: instVarName to: value].
	^ value
	