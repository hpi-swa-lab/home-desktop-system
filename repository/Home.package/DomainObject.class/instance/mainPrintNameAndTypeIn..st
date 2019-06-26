printing
mainPrintNameAndTypeIn: container
	"the main name of me, and where it came from"
	(self allTypeObjectsSortedIn: container) do: [:typeObject | (typeObject mainNameOf: self) ifNotNilDo: [:name | ^ name -> typeObject]].
	self customPrintOnValue ifNotNil: [:printed | ^ printed -> nil].
	^ 'empty object' -> nil