accessing
objectWords

	^ objectWords ifNil: [objectWords := self objectString searchWords]