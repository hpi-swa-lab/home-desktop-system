*Home-DnD
defaultPdfHandler
	^ExternalDropHandler
		type: 'application/pdf'
		extension: 'pdf'
		action: [:stream :pasteUp :event |
			| transferMorph |
			transferMorph := RTransferMorph withPassenger: stream from: pasteUp.
			pasteUp acceptDroppingMorph: transferMorph event: event. 
			]