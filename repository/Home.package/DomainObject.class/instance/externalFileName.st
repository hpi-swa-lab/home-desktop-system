Rack
externalFileName

	^ (self has: #file) 
		ifTrue: [ | fileName |	
			fileName := self file asString.
			(fileName includesSubstring: ':PDF')
				ifTrue: [fileName := 'C:\Users\patri\Desktop\literature\phd\' , (fileName copyWithoutFirst copyUpTo: $:)].
			fileName]