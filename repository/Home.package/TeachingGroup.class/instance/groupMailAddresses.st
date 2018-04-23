accessing
groupMailAddresses

	^ (self members asArray collect: [:m | m email]) joinSeparatedBy: ';' 