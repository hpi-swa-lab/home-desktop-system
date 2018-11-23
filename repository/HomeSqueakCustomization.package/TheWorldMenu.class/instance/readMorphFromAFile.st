commands
readMorphFromAFile
	"Produce a morph from a file -- either a saved .morph file or a graphics file"

	| morphOrList ff aName f m |
	aName := UIManager default chooseFileMatchingSuffixes: (Form allTypicalFileExtensions add: 'morph'; yourself) label: 'Choose a file to load' translated.
	aName ifNil: [^ self].  "User made no choice"

	(aName asLowercase endsWith: '.morph')
		ifTrue:
			[ff := FileStream readOnlyFileNamed: aName.
			morphOrList := ff fileInObjectAndCode.		"code filed in is the Model class"
			"the file may contain either a single morph or an array of morphs"
			myWorld addMorphsAndModel: morphOrList]
		ifFalse:
			[f := Form fromFileNamed: aName.
			f ifNil: [^ self error: 'unrecognized image file format' translated].
			m := myWorld drawingClass new form: f.
			myHand attachMorph: m]
