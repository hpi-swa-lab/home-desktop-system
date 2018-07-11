actions
refresh
	
	| value |
	value := self instance perform: self getterSelector.
	^ value