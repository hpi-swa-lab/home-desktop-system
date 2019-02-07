resolving
entryPoints

	^ { 'twitter://statuses/home_timeline/{1}' . 'twitter://statuses/user_timeline/{1}'} collect: [:url |
		Surrogate newOn: (url format: {userId})]