testing
stateStringOf: object
	"based on how this type understands the object, give it a short human-readable state description (e.g. 'done' or 'open' for ToDos)"
	^ self mainNameOf: object