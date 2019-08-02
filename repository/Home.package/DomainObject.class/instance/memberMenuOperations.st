Rack
memberMenuOperations
	^ (self allMemberKeys collect: [:key | key -> (self perform: key) selfMenuOperations]) asOrderedCollection , {'extend to...' -> self extendMenuOperations}