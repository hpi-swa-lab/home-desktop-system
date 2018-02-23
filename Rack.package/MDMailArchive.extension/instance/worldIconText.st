*Rack
worldIconText

	^ self archiveName , '(' , (self allMails count: [:m | m isUnread]) asString , ')'