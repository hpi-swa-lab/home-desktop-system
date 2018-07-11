private
doInternalWrite: aBlock

	currentlyWriting := true.
	^ aBlock ensure: [currentlyWriting := false].