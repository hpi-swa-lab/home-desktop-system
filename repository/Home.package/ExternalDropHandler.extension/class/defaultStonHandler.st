*Home-Core
defaultStonHandler
	^ExternalDropHandler
		type: nil
		extension: 'ston'
		action: [:stream :pasteUp :event |
			| object |
			object := (STONReader on: stream) next.
			object openRackStandardMorph]