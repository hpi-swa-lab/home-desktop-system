additional-state
setAdditionalStateAt: selector put: value

	self halt.
	self setAdditionalStateSilentlyAt: selector put: value. 
	self changed.
	self changed: selector with: value.
	^ self