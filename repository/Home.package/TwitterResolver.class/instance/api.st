private
api

	api ifNil: [
		api := STTwitterApi newFromSettings.
		api accessToken: self accessToken. "'575418334-OC3x8wPVwz5WFXR9nEBWeqUGtiodd8w5xzyQqmha'"
		api accessTokenSecret: self accessTokenSecret. "'Q3TwTWqBqqUl9R54q0p4QDK8ZTvzxv4Azok1AotMnRGTF'"
		api isAuthenticated ifFalse: [self noConnectionError].
		self updateCache.
		(self future: (20 minutes asMilliseconds)) clearApi].		
	^ api