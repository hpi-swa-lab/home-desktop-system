liveprogstudy
lpsStoreFreeCiteData: aCollectionOfDictionaries

	| newWorks |

	newWorks := aCollectionOfDictionaries collect: [:dict | | newWork |
		newWork := CreativeWork 
					resolve: (dict at: #title) 
					createBasedOn: (dict at: #title)
					automaticAccept: true.
		(newWork ?? #tags) isEmpty ifTrue: [
			dict keysAndValuesDo: [:key :value |
				newWork perform: (key , ':') asSymbol with: value]].
		newWork tags: (newWork ?? #tags) , {'live programming study'}.
		newWork liveprogstudyOrigins: (newWork ?? #liveprogstudyOrigins) , (self liveprogstudyOriginKeywords collect: [:keyword | {#hull . keyword}]).
		newWork].
	
	self freeCiteReferences: newWorks.
	(TheRack / #'Live Programming Systems Survey' / #'literature inbox') addAll: newWorks.
	