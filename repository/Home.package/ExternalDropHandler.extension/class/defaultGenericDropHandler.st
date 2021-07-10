*Home-DnD
defaultGenericDropHandler
	^ExternalDropHandler
		type: nil
		extension: nil
		action: [:stream :pasteUp :event |
			| transferMorph |
			transferMorph := RTransferMorph withPassenger: stream from: pasteUp.
			pasteUp acceptDroppingMorph: transferMorph event: event. 
			]