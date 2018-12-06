actions
removeField

	self doInternalWrite: [self instance perform: self setterSelector with: nil].
	super removeField.