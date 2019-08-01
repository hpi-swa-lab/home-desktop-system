*Home-Search
instVarNamed: aString ifAbsent: exceptionBlock

	^ self instVarAt: (self class
						instVarIndexFor: aString asString
						ifAbsent: [^ exceptionBlock value])