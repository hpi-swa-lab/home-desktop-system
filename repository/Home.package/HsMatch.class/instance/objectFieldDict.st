accessing
objectFieldDict

	^ objectFieldDict ifNil: [
		objectFieldDict := self object fieldDict
			collect: [:field | HsMatch for: field]]