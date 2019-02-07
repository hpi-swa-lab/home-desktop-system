private
retrieveApiObjectFor: aUriString

	^ self cachedInformationOn: aUriString ifAbsent: [| result |
		result := self
			ifUri: aUriString 
			designatesTweet: [:tweetId | self api singleTweetFromId: tweetId]
			ifNot: [:tweetId :uriUserId |
				uriUserId asString = userId asString 
					ifTrue: [self perform: tweetId asLegalSelector asSymbol]
					ifFalse: [#()]].
	
		result isError 
			ifTrue: [#()]
			ifFalse: [result value]]