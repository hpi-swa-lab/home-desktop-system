Rack
selfMenuOperations
	|operations|
	
	"classic way of defining operations: via DomainObject subclasses"
	operations := super selfMenuOperations asOrderedCollection.
	
	"dynamic way of defining operations: via types"
	self allTypeObjects do: [:typeObject |
		operations addAll: ((self menuOperationsFrom: typeObject class to: DomainObjectType)
			collect: [:data | {data first . self . #performType:Operation: . {typeObject . data third}}]).
	].
	
	^ operations