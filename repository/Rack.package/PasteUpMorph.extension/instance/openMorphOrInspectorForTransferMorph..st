*Rack
openMorphOrInspectorForTransferMorph: transferMorph

	{	[:p | p isMorph] -> [:p | p ].
		[:p | p isKindOf: Model] -> [:p | ToolBuilder build: p ].
	      [:p | p respondsTo: #rackStandardTool ] -> [:p | p rackStandardTool ].
		[:p | true] -> [:p | ToolBuilder build: (Inspector inspect: p)]
	} do: [:assoc | 
		(assoc key value: transferMorph passenger)
			ifTrue: [^ assoc value value: transferMorph passenger]]