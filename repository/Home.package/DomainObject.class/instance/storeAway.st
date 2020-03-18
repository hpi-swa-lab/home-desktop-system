storing
storeAway
	"This removes the in-memory representation of the object and puts it on disk. 
	It is replaced with a placeholder object." 
	
	self storeFull.
	self becomeForward: (DomainObjectOnDisk for: self).