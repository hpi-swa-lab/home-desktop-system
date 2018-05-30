construction
fillIn: aMenu from: dataForMenu
	"A menu constructor utility by RAA.  dataForMenu is a list of items which mean:
			nil							Indicates to add a line

			first element is symbol		Add updating item with the symbol as the wording selector
			second element is a list		second element has the receiver and selector

			first element is a string		Add menu item with the string as its wording
			second element is a list		second element has the receiver and selector

			a third element exists		Use it as the balloon text
			a fourth element exists		Use it as the enablement selector (updating case only)"
	

	dataForMenu do: [ :itemData | | item |
		itemData ifNil: [aMenu addLine] ifNotNil:
			[item := (itemData first isKindOf: Symbol)
				ifTrue: 
					[aMenu 
						addUpdating: itemData first 
						target: self 
						selector: #doMenuItem:with: 
						argumentList: {itemData second}]
				 ifFalse:
					[aMenu 
						add: itemData first translated
						target: self 
						selector: #doMenuItem:with: 
						argumentList: {itemData second}].
			itemData size >= 3 ifTrue:
				[aMenu balloonTextForLastItem: itemData third translated.
			itemData size >= 4 ifTrue:
				[item enablementSelector: itemData fourth]]]].

	^ aMenu