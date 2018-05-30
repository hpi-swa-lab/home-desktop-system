construction
alphabeticalMorphMenu
	| list splitLists menu firstChar lastChar subMenu |
	list := Morph withAllSubclasses select: [:m | m includeInNewMorphMenu].
	list := list sorted: [:c1 :c2 | c1 name < c2 name].
	splitLists := self splitNewMorphList: list depth: 3.
	menu := MenuMorph new defaultTarget: self.
	1 to: splitLists size
		do: 
			[:i | 
			firstChar := i = 1 
				ifTrue: [$A]
				ifFalse: 
					[((splitLists at: i - 1) last name first asInteger + 1) 
								asCharacter].
			lastChar := i = splitLists size 
						ifTrue: [$Z]
						ifFalse: [(splitLists at: i) last name first].
			subMenu := MenuMorph new.
			(splitLists at: i) do: 
					[:cl | 
					subMenu 
						add: cl name
						target: self
						selector: #newMorphOfClass:event:
						argument: cl].
			menu add: firstChar asString , ' - ' , lastChar asString subMenu: subMenu].
	^menu