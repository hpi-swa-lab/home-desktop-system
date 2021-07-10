accessing
addValidJsonPersonResponse

	self server addService: '/db/', self existingPersonDocumentId action: [:req |
		req send200Response: self validJsonPersonResponse contentType: 'application/json'].