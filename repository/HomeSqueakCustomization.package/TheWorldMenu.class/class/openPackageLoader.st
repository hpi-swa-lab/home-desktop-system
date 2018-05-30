open-menu registry
openPackageLoader
	"If this method is reached, it means that SMLoader has not yet been loaded; after SqueakMap has come into the image, a different receiver/selector will have been installed under 'Package Loader'; if this method is reached when theoretically SqueakMap is already loaded, presumably this is a grandfathered menu item in a still-up menu, so get the message on to its appropriate recipient."

	| loaderClass |
	((loaderClass := Smalltalk at: #SMLoader ifAbsent: [nil]) isKindOf: Class)
		ifTrue:
			[^ loaderClass open].

	(self confirm: 
'This requires that you first install "SqueakMap" into your image.
SqueakMap is a new architecture for finding, installing, and
publishing packages in Squeak.
Would you like to install SqueakMap now?' )
		ifTrue:
			[self loadSqueakMap]