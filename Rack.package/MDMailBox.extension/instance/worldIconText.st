*Rack
worldIconText

	^ self mailArchive archiveName , ' ' , self boxName , String crlf , 
		(self mails count: [:m | m isUnread]) asString , ' unread'