accessing
handleResponse: aResponse forDocument: aDocument

	| responseMapping |
	responseMapping := Dictionary newFrom: {409->[:response :docId | self handleDuplicate: response forDocument: aDocument]}.
	responseMapping at: aResponse code ifPresent: [:function | function value: aResponse value: aDocument].