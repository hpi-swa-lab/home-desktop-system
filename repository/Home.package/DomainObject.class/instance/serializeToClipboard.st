data integrity
serializeToClipboard

	<rackOperationLabel: 'serialize to clipboard' inContextMenus: true>

	| ston |
	ston := STON toString: self.
	Clipboard clipboardText: ston.