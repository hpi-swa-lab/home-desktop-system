magritte-descriptions
descriptionFriend
	<magritteDescription>  

	^ MAToOneRelationDescription new 
			accessor: #friend; 
			label: 'Friend';
			classes: (Array with: Person); 
			priority: 10; 
			yourself