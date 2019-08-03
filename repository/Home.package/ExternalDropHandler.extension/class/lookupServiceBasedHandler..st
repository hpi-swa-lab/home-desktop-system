*Home-DnD
lookupServiceBasedHandler: dropStream
	"The file was just dropped; let's do our job"
	| fileName services theOne |
	fileName := dropStream name.

	services := (FileServices itemsForFile: fileName)
		reject: [:svc | self unwantedSelectors includes: svc selector].

	"no service, default behavior"
	services isEmpty
		ifTrue: [^nil].

	theOne := self chooseServiceFrom: services.
	theOne
		ifNil: [^nil].
	^theOne isDroppingServiceEntry 
		ifTrue: [ExternalDropHandler defaultGenericDropHandler] 		ifFalse: [ExternalDropHandler type: nil extension: nil action: 			[:stream | theOne performServiceFor: stream]]