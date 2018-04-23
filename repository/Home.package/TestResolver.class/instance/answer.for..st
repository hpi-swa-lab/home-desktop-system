as yet unclassified
answer: aMessage for: anUrl
	"Answers a collection of information from various sources"

	^ self testData at: anUrl asString ifPresent: [:d | d at: aMessage selector ifAbsent: [nil]]
	 