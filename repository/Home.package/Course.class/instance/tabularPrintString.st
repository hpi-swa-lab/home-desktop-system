printing
tabularPrintString

	^ String streamContents: [:stream | 
		self teams do: [:team |
			stream 
				<< (team groupName last: 2) 
				<< String tab
				<< team assignedTopic asString
				<< String tab
				<< ((team members collect: #fullName) asArray joinSeparatedBy: ', ')
				<< String tab
				<< team tutor firstName first asUppercase
				<< team tutor lastName first asUppercase
				<< String crlf ]]
	