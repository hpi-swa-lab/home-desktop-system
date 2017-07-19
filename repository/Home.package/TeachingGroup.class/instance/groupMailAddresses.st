accessing
groupMailAddresses

	^ (self members collect: [:m | m email]) joinSeparatedBy: ';' 