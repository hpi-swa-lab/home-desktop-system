*Home-Behavior
menuOperations
	|operations|
	
	"classic way of defining operations: via DomainObject subclasses"
	operations := super menuOperations asOrderedCollection.
	
	"dynamic way of defining operations: via types"
	self allTypeObjects do: [:typeObject |
		operations addAll: ((#(#rackOperation #rackOperationLabel:inContextMenus: #rackOperationLabel:group:inContextMenus:)
			collect: [:pragmaName | Pragma allNamed: pragmaName from: typeObject class to: DomainObjectType]) flatten
			collect: [:pragma | {pragma arguments first . #performType:Operation: . {typeObject . pragma method selector}}]).
	].
	
	^ operations