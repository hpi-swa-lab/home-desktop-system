printing
tabularPrintString

	^ String streamContents: [:stream | 
		self teams withIndexDo: [:team :index |
			stream 
				<< index asString 
				<< String tab
				<< team assignedTopic asString
				<< String tab
				<< ((team members collect: #asString) asArray joinSeparatedBy: ', ')
				<< String crlf ]]
	