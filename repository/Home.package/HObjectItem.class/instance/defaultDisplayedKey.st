defaults
defaultDisplayedKey

	self flag: #ToDo. "TODO use #'' once that works bug free"
	^ self wantedObjectAttributeKey ifNil: [#nil]