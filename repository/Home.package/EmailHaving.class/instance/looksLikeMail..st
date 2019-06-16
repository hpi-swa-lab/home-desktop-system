private
looksLikeMail: string
	^ (string includes: $@) and: [string first ~= $@] and: [string last ~= $@]