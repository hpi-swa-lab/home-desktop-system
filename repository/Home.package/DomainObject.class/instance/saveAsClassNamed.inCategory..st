*Home-SWDEva
saveAsClassNamed: aClassNameString inCategory: aCategoryNameString
	| classDefinition newClass |
	
	classDefinition := MCClassDefinition
		name: ('HCustom', aClassNameString)
		superclassName: self className
		category: aCategoryNameString
		instVarNames: self additionalStateKeys
		comment: ''.
	newClass := classDefinition createClass.
	
	self additionalStateKeys do: [:instVar |
		(RBCreateAccessorsForVariableRefactoring
			variable: instVar
			class: newClass
			classVariable: false) execute].