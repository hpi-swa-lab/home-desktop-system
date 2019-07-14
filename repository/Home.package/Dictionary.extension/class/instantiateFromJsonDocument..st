*Home-Database
instantiateFromJsonDocument: json

	| instance |
	instance := self new.
	json keysAndValuesDo: [:key :value |
		instance at: key asSymbol put: ((value class = JsonObject) ifTrue: [value toObject] ifFalse: [value])].
	^ instance