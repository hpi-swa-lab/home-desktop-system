construction
dataForNewObjectMenu
	"refer to documentation in fillIn:from: "
	| result |
	result := OrderedCollection new.
	result addAll: ((DomainObjectType allTemplates sorted: [:a :b | a name < b name])
		collect: [:template | {template name . {template . #openNewInObjectEditor} . 'Create a new ' , template name}]).
	result add: nil.
	result addAll: ((DomainObject allSubclasses sorted: [:a :b | a name < b name])
				collect: [:class | | formattedClassName |
					formattedClassName := class printString.
					{formattedClassName . {class . #openNewInObjectEditor} . 'Create a new ' , formattedClassName}]).
	^ result.