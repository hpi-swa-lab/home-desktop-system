as yet unclassified
activateRackDragAndDrop
	<preference: 'Activate Rack Drag and Drop'
		category: 'Rack'
		description: 'When activated this changes the drop behavior of the world. Whenever, an object is dropped the Rack tries to make sense of the object and display it in some way.'
		type: #Boolean>
	^ RackDragAndDropIsActivated ifNil: [ true ]