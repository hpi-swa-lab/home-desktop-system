accessing
sort: typeObjects
	^ typeObjects sorted: [:a :b | (self indexOf: a) <= (self indexOf: b)]