as yet unclassified
processDate: dateString at: key in: properties

	| day month year |
	year := properties at: 'year' ifAbsent: ''.
	month := (properties at: 'month' ifAbsent: '1') ifEmpty: '1'.
	day := (properties at: 'day' ifAbsent: '1') ifEmpty: '1'.

	"This is dangerous but necessary due to the way the US
	thinks dates have to be formatted --pre"
	^ #publicationDate -> (month , ' ' , day , ' ' , year) asDate