Rack
memberMenuOperations
	^ self allMemberKeys collect: [:key | key -> (self perform: key) selfMenuOperations]