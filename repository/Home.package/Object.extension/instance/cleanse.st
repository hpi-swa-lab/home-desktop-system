*Home-Core
cleanse

	^ HomeDataIntegrityRuleResult 
		newManualInterventionResultFromResults: 
			(self class integrityRules 
				collect: [:rule | rule executeOn: self ]
				thenSelect: [:ruleResult | ruleResult doesRequireManualIntervention])
		for: self
			