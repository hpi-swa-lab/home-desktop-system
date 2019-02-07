running
tearDown

	SurrogateEquivalenceClass removeEquivalenceClassesFor: surrogate1.
	SurrogateEquivalenceClass removeEquivalenceClassesFor: surrogate2.
	
	Mount all removeAllSuchThat: [:r | r class = TestResolver]