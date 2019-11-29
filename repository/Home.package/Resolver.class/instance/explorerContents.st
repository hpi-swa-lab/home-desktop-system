Home-UI
explorerContents

	| entryPoints settings |
	settings := super explorerContents.
	entryPoints := self entryPoints.
	
	^ {
		ObjectExplorerWrapper
			with: (Dictionary newFrom: (settings collect: [:s | s item]))
			name: 'settings'
			model: self.
		ObjectExplorerWrapper
			with: entryPoints
			name: 'entry points'
			model: self.
		}