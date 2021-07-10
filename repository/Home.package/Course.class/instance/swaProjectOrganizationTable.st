swa teaching
swaProjectOrganizationTable

	^ ((self teams sorted: [:g1 :g2 | g1 groupName < g2 groupName]) collect: [:g |
			(g answer: #assignedTopic or: 'Frühstück') printString,
			String tab, 
			((g members collect: #fullName) sorted joinSeparatedBy: ', ') ,
			String tab ,
			g tutor firstName first asUppercase asString , g tutor lastName first asUppercase asString])
				joinSeparatedBy: String crlf