actions
initializeField

	| classes index |
	classes := Object allSubclasses sorted: [:a :b | a name < b name].
	index := UIManager default 
		chooseFrom: classes
		title: 'What kind of object do you want to create?'.
	index isZero ifTrue: [^nil].
	self setValueTo: (classes at: index) new