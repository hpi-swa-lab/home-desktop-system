private
updateCache

	(self accessToken notNil and: [self accessTokenSecret notNil]) ifTrue: [
		(self api isAuthenticated and: [self api userId notNil]) ifFalse: [self noConnectionError].
		userId := self api userId value]