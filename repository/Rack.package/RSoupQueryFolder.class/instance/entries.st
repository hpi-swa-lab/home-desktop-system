accessing
entries

	^ self contents asOrderedCollection collectWithIndex: [:obj :index | RBoxTransient in: self named: obj printString containing: obj]