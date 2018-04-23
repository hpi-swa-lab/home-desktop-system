as yet unclassified
knowsSomethingAbout: anUri regarding: aMessage

	^ anUri scheme = 'mid' and: [MDMail canUnderstand: aMessage selector ]