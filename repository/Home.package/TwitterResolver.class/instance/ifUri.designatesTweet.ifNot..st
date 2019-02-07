private
ifUri: uri designatesTweet: trueBlock ifNot: falseBlock

	| tweetId uriInformation uriUserId |
	uriInformation := self parseUri: uri.
	tweetId := uriInformation first.
	uriUserId := uriInformation second.

	^ tweetId isAllDigits 
		ifTrue: [trueBlock value: tweetId] 
		ifFalse: [falseBlock value: tweetId value: uriUserId]