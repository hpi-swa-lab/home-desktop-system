as yet unclassified
from: aStartTimeStamp to: anEndTimeStamp
	| instance |
	instance := self new.
	instance start: aStartTimeStamp.
	instance end: anEndTimeStamp.
	^instance.