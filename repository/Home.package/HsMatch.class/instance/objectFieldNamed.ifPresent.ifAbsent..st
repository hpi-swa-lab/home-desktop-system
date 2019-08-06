accessing
objectFieldNamed: fieldName ifPresent: presenceBlock ifAbsent: absenceBlock

	^ self objectFieldDict
		at: fieldName
		ifPresent: presenceBlock
		ifAbsent: absenceBlock