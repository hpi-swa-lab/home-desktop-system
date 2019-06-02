*Home-SWDEva
saveAsClassNamed: aClassNameString inCategory: aCategoryNameString
	| newClass |
	
	newClass := self class subclass: ('HCustom', aClassNameString capitalized) asSymbol
		instanceVariableNames: self additionalStateKeys
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryNameString.
	
	self additionalStateKeys do: [:instVar |
		(RBCreateAccessorsForVariableRefactoring
			variable: instVar
			class: newClass
			classVariable: false) execute].