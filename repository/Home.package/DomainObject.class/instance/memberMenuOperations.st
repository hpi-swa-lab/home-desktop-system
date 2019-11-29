Rack
memberMenuOperations
	^ (self allMemberKeys collect: [:key | key -> (self perform: key) menuOperations]) asOrderedCollection , {'extend to...' -> self extendMenuOperations}