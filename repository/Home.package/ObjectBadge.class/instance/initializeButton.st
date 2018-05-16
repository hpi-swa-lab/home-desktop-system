initialize-release
initializeButton

	| button |
	button := (PHButton icon: #iconEdit)
		small;
		align: #(right top);
		yourself.
		
	button when: #clicked send: #editButtonClicked to: self.
	^ button