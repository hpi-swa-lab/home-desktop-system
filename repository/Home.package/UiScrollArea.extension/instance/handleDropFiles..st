*Home-UI
handleDropFiles: anEvent
	"Handle a drop from the OS."
	self widget ifNotNil: [^self widget handleDropFiles: anEvent]. "Delegate to wrapped widget"
	super handleDropFiles: anEvent.