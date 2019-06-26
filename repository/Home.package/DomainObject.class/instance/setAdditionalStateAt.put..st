additional-state
setAdditionalStateAt: selector put: value

	self setAdditionalStateSilentlyAt: selector put: value. 
	self changed.
	self changed: selector with: value.
	self triggerEvent: #objectEditorStructureChanged.
	^ self