accessing
rootRackFolder

	^ self root ifNil: [{RTransientEntry in: TheRack named: #root containing: TheRack}]