instance creation
in: obj name: name
	(obj basicRespondsTo: name) ifFalse: [^ nil].
	^ self new
		object: obj;
		attributeName: name;
		yourself