instance creation
in: obj name: name
	(obj basicRespondsTo: name) ifFalse: [^ nil].
	^ self newOn: obj names: {name}