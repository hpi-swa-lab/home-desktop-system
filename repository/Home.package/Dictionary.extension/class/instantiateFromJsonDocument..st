*Home-Database
instantiateFromJsonDocument: json

	| instance |
	instance := self new.
	json keysAndValuesDo: [:key :value |
		(value isDictionary and: [(value keyAtValue: 'sq_class') notNil]) ifTrue: [value := value toObject].
		instance at: key put: value].
	^ instance