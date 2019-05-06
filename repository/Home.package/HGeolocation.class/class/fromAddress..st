instance creation
fromAddress: anAddress

	"| template query response json |
	template := 'https://nominatim.openstreetmap.org/search?format=json&&addressdetails=0'.
	query := template format: {aCoordinate latitude . aCoordinate longitude}.
	response := WebClient httpGet: query.
	json := Json readFrom: response content readStream.
	^ self displayName: (json at: 'display_name')"