Morphic-Explorer
explorerContents

	| explorerContents |
	explorerContents := super explorerContents.
	^ ((Resolver allInformationOn: self uri) sorted: [:a1 :a2 | a1 key asString < a2 key asString])
		collect: [:association |
			ObjectExplorerWrapper
				with: association value 
				name: association key asString
				model: self]