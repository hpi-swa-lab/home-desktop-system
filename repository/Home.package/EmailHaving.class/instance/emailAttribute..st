private
emailAttribute: obj
	"prioritised list of attribute names to look for"
	"^ DomainObjectAttribute in: obj names: #(email mail eMail eMailAddress mailAddress)"
	^ DomainObjectAttribute in: obj
		filter: [:key :value | (key asLowercase includesSubstring: 'mail') or: [value isString and: [self looksLikeMail: value]]]
		combinedName: 'email address'