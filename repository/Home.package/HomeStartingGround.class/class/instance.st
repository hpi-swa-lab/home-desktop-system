singleton
instance

	^ DefaultInstance ifNil: [DefaultInstance := self new]