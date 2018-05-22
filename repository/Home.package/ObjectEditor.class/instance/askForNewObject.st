private
askForNewObject

	| classes index |
	classes := Object allSubclasses sorted: [:a :b | a name < b name].
	index := UIManager default 
		chooseFrom: classes
		title: 'What kind of object do you want to create?'.
		
	index ifNil: [^nil].
	^ (classes at: index) new