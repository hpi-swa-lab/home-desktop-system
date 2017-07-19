as yet unclassified
initialViewOfPage

	| d p |
	p := ExternalOSProcess exec: 'C:\Users\patri\Desktop\aNewHome\tools\xpdf\bin32\pdftopng.exe -f 3 -l 3 C:\Users\patri\Desktop\aNewHome\tmp\sonnentag.pdf C:\Users\patri\Desktop\aNewHome\tmp\sonnentag'.
	d := Delay forMilliseconds: 50.
	[p isComplete] whileFalse: [d wait].
	^ (PNGReadWriter formFromStream: (FileDirectory default fileNamed: 'C:\Users\patri\Desktop\aNewHome\tmp\sonnentag-000003.png')) asMorph