additional-state
setAdditionalStateAt: selector put: value
	| hadValue |
	hadValue := self hasAdditionalState: selector.
	self setAdditionalStateSilentlyAt: selector put: value. 
	self noteChangeOf: selector to: value.
	hadValue ifFalse: [self triggerEvent: #objectEditorStructureChanged].
	^ self