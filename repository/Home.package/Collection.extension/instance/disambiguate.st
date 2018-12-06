*Home-Core
disambiguate
	"Closely related to anyOne but without the special case for sequenceable collections"

	self do: [:obj | ^ obj].
	self errorEmptyCollection.