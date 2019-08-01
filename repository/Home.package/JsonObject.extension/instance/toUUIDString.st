*Home-Database
toUUIDString

	^ (UUID withAll: (self at: 'json_values')) asString