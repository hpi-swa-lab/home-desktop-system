actions
fillTarget

	self objectsToMerge do: [:object |
		object additionalStateSelectors do: [:selector |
			(self target has: selector) ifFalse: [
				self target setAdditionalStateAt: selector put: (object ? selector)]]].
	
	"Merge other fields"
	(self objectsToMerge gather: [:o | o ?? #liveprogstudyOrigins])
		ifNotEmpty: [:collection | 
			self target liveprogstudyOrigins: ((self target ?? #liveprogstudyOrigins) , collection) asSet]