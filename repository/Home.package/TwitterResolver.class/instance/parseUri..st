private
parseUri: aUriString

	| matches |
	matches := (self uriRegex submatchesIn: aUriString) first.
	^ {matches second . matches third}