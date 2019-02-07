tests
testParseWikiDataInformation

	WikiDataResolver new parseContentsFrom: (Json readFrom: self wikiDataTestString readStream)