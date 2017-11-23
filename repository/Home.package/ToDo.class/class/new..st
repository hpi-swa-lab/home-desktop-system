as yet unclassified
new: description

	^ self new
		description: (self extractDescription: description);
		tags: (self extractTags: description);
		yourself