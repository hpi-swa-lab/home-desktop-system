accessing
entries

	^ (boxes 
		sorted: [:e1 :e2 | e1 label asLowercase >= e2 label asLowercase]) 
		sorted: [:entry1 :entry2 | entry2 item isRackFolder]