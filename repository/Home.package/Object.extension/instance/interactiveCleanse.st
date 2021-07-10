*Home-Core
interactiveCleanse

	<rackOperationLabel: 'cleanse' inContextMenus: true>

	| result |
	result := self cleanse.
	result doesRequireManualIntervention ifTrue: [result explore].