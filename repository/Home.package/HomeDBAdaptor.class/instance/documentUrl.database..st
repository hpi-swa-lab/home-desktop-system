accessing
documentUrl: aDocument database: aDatabase

	^ 'http://{1}:{2}/{3}/{4}' format: { self host. self port. aDatabase. aDocument }.