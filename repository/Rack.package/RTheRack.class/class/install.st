as yet unclassified
install

	TheWorldMenu registerOpenCommand: {'Object Rack' . {RRackTool . #open}}.

	(Smalltalk includesKey: #TheRack) ifFalse: [
		Smalltalk at: #TheRack put: self new]