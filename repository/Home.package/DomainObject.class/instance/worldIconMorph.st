Rack
worldIconMorph
	self allTypeObjectsSorted do: [:typeObject | (typeObject iconMorphOf: self) ifNotNilDo: [:morph | ^ morph]].
	^ super worldIconMorph