*Home-Core
allNamed: aSymbol in: aClass method: methodName
	"Answer a collection of all pragmas found in the given method of aClass whose keyword is aSymbol."
	^ (aClass methodDict at: methodName) pragmas select: [:p | p keyword = aSymbol]