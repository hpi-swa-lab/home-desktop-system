*Home-Core
defaultPdfHandler
	^ExternalDropHandler
		type: 'application/pdf'
		extension: 'pdf'
		action: [:stream :pasteUp :event |
			| transferMorph |
			"self halt."
			transferMorph := TransferMorph withPassenger: stream from: pasteUp.
			pasteUp acceptDroppingMorph: transferMorph event: event. 
			]