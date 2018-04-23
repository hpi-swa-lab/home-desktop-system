as yet unclassified
allInformationOn: aHierarchicalURI 
	
	| entityId entityUrl webResponse triples |
	entityId := (aHierarchicalURI path findTokens: '/') last.
	entityUrl := ('https://www.wikidata.org/wiki/Special:EntityData/{1}.nt' format: {entityId}).
	
	webResponse := WebClient httpGet: entityUrl.
	webResponse code = 404 ifTrue: [^ #()].
	triples := NTriples readTriplesFrom: webResponse content.
	self halt.