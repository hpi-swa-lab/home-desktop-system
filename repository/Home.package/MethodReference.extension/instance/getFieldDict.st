*Home-Search
getFieldDict

	^ super getFieldDict
		add: ( 'source' -> self sourceString);
		yourself