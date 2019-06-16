dynamic behavior
can: aSelector
	"a counterpart to #has: - does this DomainObject can perform a given action by its type objects?"
	^ (self operationsCallableBy: aSelector) notEmpty.