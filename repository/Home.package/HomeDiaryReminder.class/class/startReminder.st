as yet unclassified
startReminder
	"self startReminder"
	
	[[	WorldState addDeferredUIMessage: [
			(Time current hour24 > 16 and: [Time current minutes > 30])
				ifTrue: [(DiaryEntry all noneSatisfy: [:entry | entry date asDate = Date today ])
							ifTrue: [DiaryEntry new edit]]].
		(Delay forSeconds: 5 minutes asSeconds) wait] repeat] forkAt: Processor userBackgroundPriority