preferences
useAdvancedObjectSearch

	<preference: 'Use the experimental advanced search language.'
		category: 'Home'
		description: 'If enabled, the object search bar will use the advanced search language to find objects in your Rack.'
		type: #Boolean>
	^ UseAdvancedObjectSearch ifNil: [ false ]