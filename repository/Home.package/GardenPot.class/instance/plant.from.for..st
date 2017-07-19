accessing
plant: aPlant from: startDate for: durationInWeeks

	self plantings add: (GardenPlanting new
		plant: aPlant;
		start: startDate;
		end: startDate + durationInWeeks weeks).