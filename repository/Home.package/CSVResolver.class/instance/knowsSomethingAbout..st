resolving
knowsSomethingAbout: anUri

	^ anUri isString and: [anUri beginsWith: 'csv:'] and: [anUri includesSubString: self file name]