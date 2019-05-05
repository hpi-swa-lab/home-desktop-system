instance creation
fromCoordinate: aCoordinate

	| template query response json address |
	template := 'https://nominatim.openstreetmap.org/reverse?format=json&lat={1}&lon={2}&zoom=18&addressdetails=1'.
	query := template format: {aCoordinate latitude . aCoordinate longitude}.
	response := WebClient httpGet: query.
	json := Json readFrom: response content readStream.
	address := json at: 'address' ifAbsent: [^ nil].
	^ self
		street: (address at: 'road' ifAbsent: [])
		housenumber: (address at: 'house_number' ifAbsent: [])
		postcode: (address at: 'postcode' ifAbsent: [])
		city: (address at: 'city' ifAbsent: [])
		country: (address at: 'country' ifAbsent: [])