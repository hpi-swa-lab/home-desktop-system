tests
testLevenshteinDistance

	| samples |
	samples := #(
		#('kitten' 'sitting' 3)
		#('Patrick' 'Partick' 2)
		#('Patrick Rein' 'Patrick Star' 4)
		#('Rein' 'Patrick Rein' 8)
		#('Patrick Rein' 'Pain' 8)
		#('' '' 0)
		#('' 'Hello' 5)
		#('Patrick' 'patrick' 1)).
	samples do: [:sample |
		| stringA stringB distance |
		stringA := sample first.
		stringB := sample second.
		distance := sample third.
		self assert: distance equals: (stringA levenshteinDistanceTo: stringB).
		self assert: distance equals: (stringB levenshteinDistanceTo: stringA)].