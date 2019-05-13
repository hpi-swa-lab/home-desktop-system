instance creation
instance
	"proviging singleton instances for all subclasses"
	Instances ifNil: [Instances := Dictionary new].
	^ Instances at: self ifAbsentPut: [self new]