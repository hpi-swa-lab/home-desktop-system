accessing
scheduleForNextWeek

	<rackOperationLabel: 'schedule for next week' group: 'scheduling' inContextMenus: true>

	^ self scheduledFor: (DateAndTime today + 1 week) asWeek