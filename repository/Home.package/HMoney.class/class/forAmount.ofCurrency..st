as yet unclassified
forAmount: aNumber ofCurrency: aString
	| instance |
	instance := self new.
	instance amount: aNumber.
	instance currency: aString.
	^ instance