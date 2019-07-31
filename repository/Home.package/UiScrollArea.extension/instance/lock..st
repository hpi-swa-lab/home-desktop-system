*Home-DnD
lock: aBoolean 
	"TODO: figure out how to make Windows always active or how the Contents can be resized to fit this area, so that dropping always works. Then remove this method again."
	"change the receiver's lock property"
	(extension isNil and: [aBoolean not]) ifTrue: [^ self].
	self assureExtension locked: false "aBoolean"