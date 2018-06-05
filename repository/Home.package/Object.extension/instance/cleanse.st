*Home-Core
cleanse

	^ HomeDataIntegrityRuleResult 
		newManuelInterventionResultFromResults: 
			(self class integrityRules 
				collect: [:rule | rule executeOn: self ]
				thenSelect: [:ruleResult | ruleResult doesRequireManualIntervention])
		for: self
			