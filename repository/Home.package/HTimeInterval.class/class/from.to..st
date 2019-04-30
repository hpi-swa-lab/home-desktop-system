as yet unclassified
from: aStartTimeStamp to: anEndTimeStamp
	| instance |
	instance := self new.
	instance timespan: (Timespan starting: aStartTimeStamp ending: anEndTimeStamp).
	^instance.