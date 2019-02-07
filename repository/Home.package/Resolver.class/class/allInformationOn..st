as yet unclassified
allInformationOn: anUri

	^ (self resolvers 
		select: [:resolver | resolver knowsSomethingAbout: anUri ])
		gather: [:resolver | resolver allInformationOn: anUri]