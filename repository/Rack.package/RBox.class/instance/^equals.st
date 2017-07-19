accessing
= anotherBox


	^ anotherBox class = self class
		and: [self item = anotherBox item]	
		and: [self parent = anotherBox parent
				and: [self label = anotherBox label]]