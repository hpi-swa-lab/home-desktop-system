Home-UI
objectEditorPrintString

	^ 'A {1} mount {3} ({2} objects)' format: {
		(self className copyFrom: 1 to: (self className findString: 'Resolver') - 1) .
		self entryPoints size.
		self file localName }