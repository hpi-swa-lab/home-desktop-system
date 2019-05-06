Rack-UI
openRackStandardMorph

	^ TiledMapMorph new 
		center: (MapTileLoader latLongToWorldPos: self latitude@self longitude);
		zoom: 13;
		openInWorld;
		yourself