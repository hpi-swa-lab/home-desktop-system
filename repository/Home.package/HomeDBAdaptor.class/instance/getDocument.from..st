accessing
getDocument: aDocument from: aDatabase

	| url |
	url := self documentUrl: aDocument database: aDatabase.
	^ WebClient httpGet: url