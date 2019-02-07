resolving
allInformationOn: aUriString 

	^ (self retrieveApiObjectFor: aUriString) explorerContents collect: [:wrapper | 
		"Unwrapping the explorer contents item which already is an association"
		wrapper item key -> wrapper item value asSurrogate]