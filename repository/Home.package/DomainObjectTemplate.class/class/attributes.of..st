as yet unclassified
attributes: attributeNames of: obj
	^ self values: (attributeNames collect: [:name | name -> nil]) of: obj