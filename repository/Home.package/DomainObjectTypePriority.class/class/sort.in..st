accessing
sort: typeObjects in: container
	| prio |
	prio := OrderedCollection new.
	container ifNotNil: [container withAllOwnersDo: [:morph | 
		(morph extension valueOfProperty: #domainObjectTypePriority)
			ifNotNil: [:newPrio | prio addAll: newPrio]]].
	^ typeObjects sorted: [:a :b | (self indexOf: a in: prio) <= (self indexOf: b in: prio)]