Rack
menuOperations

	| operations |
	operations := super menuOperations asOrderedCollection.
	self allTypeObjects do: [:typeObject |
		operations addAll: ((self menuOperationsFrom: typeObject class to: DomainObjectType)
			collect: [:data | {data first . self . #performType:Operation: . {typeObject . data third}}])].
	^ operations