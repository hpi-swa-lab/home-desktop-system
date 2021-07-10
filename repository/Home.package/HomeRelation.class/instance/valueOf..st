read/write
valueOf: aPersistentObject

	^ aPersistentObject getAdditionalStateAt: self identifier asSymbol ifAbsent: [nil]