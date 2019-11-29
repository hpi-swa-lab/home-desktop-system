Rack
extendMenuOperations
	^ DomainObjectType allTemplates 
		select: [:t | t willModify: self] 
		thenCollect: [:t | {t name . t . #fill: . {self}}]