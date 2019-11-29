resolving
knowsSomethingAbout: anUri

	^ anUri isString and: [anUri beginsWith: 'csv:'] and: [anUri includesSubstring: self file name]