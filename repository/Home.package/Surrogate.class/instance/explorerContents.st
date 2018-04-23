as yet unclassified
explorerContents

	| explorerContents |
	explorerContents := super explorerContents.
	^ (Resolver allInformationOn: self uri) collect: [:association |
		ObjectExplorerWrapper
			with: association value 
			name: association key asString
			model: self]