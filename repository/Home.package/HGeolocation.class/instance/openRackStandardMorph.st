Rack-UI
openRackStandardMorph

	| map |
	map := TiledMapMorph new 
		extent: 500@500;
		center: (MapTileLoader latLongToWorldPos: self latitude@self longitude);
		zoom: 17.
	map pins add: (MapLocationMarker new latLong: self latitude@self longitude).
	^ map
		openInWorld;
		yourself