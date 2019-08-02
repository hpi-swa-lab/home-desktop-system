accessing
list

	^ self scoreBoard
		collect: [:each | each key]
		as: Array