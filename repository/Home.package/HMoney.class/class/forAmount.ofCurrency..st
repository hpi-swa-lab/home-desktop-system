as yet unclassified
forAmount: aNumber ofCurrency: aString
	| scaledDecimal instance |
	scaledDecimal := aNumber asScaledDecimal: 2.
	instance := self new.
	instance amount: aNumber.
	instance currency: aString.
	^ instance