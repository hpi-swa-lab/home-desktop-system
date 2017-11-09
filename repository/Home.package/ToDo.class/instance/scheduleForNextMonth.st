accessing
scheduleForNextMonth

	<rackOperationLabel: 'schedule for next month' group: 'scheduling' inContextMenus: true>

	^ self scheduledFor: (DateAndTime today + 5 weeks) asMonth