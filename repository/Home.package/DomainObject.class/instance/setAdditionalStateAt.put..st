additional-state
setAdditionalStateAt: selector put: value
	| hadValue |
	hadValue := self hasAdditionalState: selector.
	self setAdditionalStateSilentlyAt: selector put: value. 
	self changed.
	self changed: selector with: value.
	hadValue ifFalse: [self triggerEvent: #objectEditorStructureChanged].
	^ self