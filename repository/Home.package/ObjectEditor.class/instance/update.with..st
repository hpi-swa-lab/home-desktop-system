dependents
update: aVariableName with: aValue

	wrappersToRows keys noneSatisfy: [:wrapper |
		wrapper matchesVariableName: aVariableName] 	