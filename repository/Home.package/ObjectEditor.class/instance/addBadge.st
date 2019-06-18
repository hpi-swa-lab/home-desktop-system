initialization
addBadge

	self badge: (ObjectBadge new
		when: #clicked send: #badgeWasClicked to: self;
		when: #addNewFieldRequested send: #addNewField to: self;
		yourself).
	self addMorph: self badge.