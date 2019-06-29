*Home-Core
defaultPdfHandler
	^ExternalDropHandler
		type: 'application/pdf'
		extension: 'pdf'
		action: [:stream :pasteUp :event |
			| transferMorph |
			transferMorph := TransferMorph withPassenger: stream from: pasteUp.
			pasteUp acceptDroppingMorph: transferMorph event: event. 
			]