comparing
hash

	^ super hash 
	"^ additionalState hash bitXor: (self createdAt hash bitXor: self uuid hash)"