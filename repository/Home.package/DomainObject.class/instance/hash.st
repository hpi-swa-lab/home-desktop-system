comparing
hash

	^ self additionalState hash bitXor: (self createdAt hash bitXor: self uuid hash)