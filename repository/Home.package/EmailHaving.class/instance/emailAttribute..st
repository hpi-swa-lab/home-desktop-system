private
emailAttribute: obj
	"prioritised list of attribute names to look for"
	^ DomainObjectAttribute in: obj names: #(email mail eMail eMailAddress mailAddress)