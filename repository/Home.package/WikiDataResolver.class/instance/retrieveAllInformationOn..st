private
retrieveAllInformationOn: aUriString 
	
	| entityId entityUrl webResponse content |
	entityId := aUriString pathComponents last.
	entityUrl := ('https://www.wikidata.org/wiki/Special:EntityData/{1}.json' format: {entityId}).
	
	webResponse := WebClient httpGet: entityUrl.
	webResponse code = 404 ifTrue: [^ #()].
	content := Json readFrom: webResponse content readStream.
	
	^ self parseContentsFrom: content
	