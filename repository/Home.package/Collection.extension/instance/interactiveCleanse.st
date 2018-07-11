*Home-UI
interactiveCleanse

	<rackOperationLabel: 'cleanse all' inContextMenus: true>

	| result |
	result := self cleanseAll.
	(result select: #doesRequireManualIntervention)
		ifNotEmpty: [:manualInterventions | manualInterventions explore].