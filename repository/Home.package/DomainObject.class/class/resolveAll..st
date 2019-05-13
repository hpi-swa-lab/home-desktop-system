instance resolution
resolveAll: propertyDict

	| propertyKeys applicableKeySets |
	propertyKeys := propertyDict keys.
	applicableKeySets := self keySets select: [:keySet | propertyKeys includesAllOf: keySet].
	^ self all select: [:obj |
		applicableKeySets anySatisfy: [:keySet |
			keySet allSatisfy: [:key |
				(obj ? key) = (propertyDict at: key)]]].