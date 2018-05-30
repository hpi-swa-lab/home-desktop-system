construction
addObjectsAndTools: menu
	self
		fillIn: menu
		from: {
			nil.
			{ 'objects (o)'. { #myWorld. #activateObjectsTool }. 'A tool for finding and obtaining many kinds of objects' }.
			{ 'new morph...'. { self. #newMorph }. 'Offers a variety of ways to create new objects' }.
			nil.
			{ 'authoring tools...'. { self. #scriptingDo }. 'A menu of choices useful for authoring' }.
			{ 'playfield options...'. { self. #playfieldDo }. 'A menu of options pertaining to this object as viewed as a playfield' }.
			{ 'flaps...'. { self. #flapsDo }. 'A menu relating to use of flaps.  For best results, use "keep this menu up"' }.
			{ 'projects...'. { self. #projectDo }. 'A menu of commands relating to use of projects' }.
			{ 'telemorphic...' . {self. #remoteDo}.  'commands for doing multi-machine "telemorphic" experiments'}.
			nil
		}