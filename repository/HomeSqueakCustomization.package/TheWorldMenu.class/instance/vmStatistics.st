commands
vmStatistics
	"Open a string view on a report of vm statistics"

	(StringHolder new contents: Smalltalk vmStatisticsReportString)
		openLabel: 'VM Statistics'