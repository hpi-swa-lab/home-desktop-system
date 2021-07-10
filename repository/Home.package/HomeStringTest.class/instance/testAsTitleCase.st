tests
testAsTitleCase

	self assert: '123' equals: '123' asTitleCase.
	self assert: '' equals: '' asTitleCase.
	self assert: 'This is a Longer Title' equals: 'this is a longer title' asTitleCase.
	self assert: 'A Title: A Subtitle' equals: 'a title: a subtitle' asTitleCase.
	self assert: 'A Title''s Subtitle' equals: 'a title''s subtitle' asTitleCase.