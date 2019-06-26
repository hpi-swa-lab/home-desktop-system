Rack
worldIconMorphIn: container
	(self allTypeObjectsSortedIn: container) do: [:typeObject | (typeObject iconMorphOf: self) ifNotNilDo: [:morph | ^ morph]].
	"if any subclass overrides #worldIconMorph, use that value instead"
	self class withAllSubclassesDo: [:class |
		(class = DomainObject) ifTrue: [^ super worldIconMorph].
		(class methodDict includesKey: #worldIconMorph) ifTrue: [^ self worldIconMorph].
	].
	^ super worldIconMorph