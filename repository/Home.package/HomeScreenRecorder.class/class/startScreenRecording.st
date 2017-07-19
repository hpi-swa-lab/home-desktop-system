as yet unclassified
startScreenRecording

	[[self new takeScreenshot. (Delay forSeconds: self delayInMinutes asSeconds) wait] repeat] forkAt: 25 named: 'screen recorder'