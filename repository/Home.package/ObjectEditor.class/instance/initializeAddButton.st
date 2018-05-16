initialize-release
initializeAddButton

	| button buttonRow |
	buttonRow := PHPage row
					align: #(fill fill);
					yourself.
	
	button := self instance isCollection
		ifFalse: [(PHButton label: 'add a field' icon: #iconPlus)
					small;
					expand: true;
					align: #(center center);
					when: #clicked send: #addFieldButtonClicked to: self;
					yourself.]
		ifTrue: [self instance isArray
					ifFalse: [ObjectEditorField row
								add: ((PHLabel new)
										text: 'drop to add to collection';
										align: #(center center);
										expand: true;
										style: 'weight' set: 200
										yourself);
								align: #(fill fill);
								expand: true;
								when: #objectDropped send: #objectToAdd: to: self;
								yourself]
					ifTrue: ["nothing left to do"^ self]].
	
	buttonRow add: button.
	
	self add: buttonRow.