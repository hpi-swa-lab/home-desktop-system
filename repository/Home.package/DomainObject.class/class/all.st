soup
all

	^ (soup select: [:o | o isKindOf: self]) asArray