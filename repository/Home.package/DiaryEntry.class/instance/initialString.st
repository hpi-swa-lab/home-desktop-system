constants
initialString

	| pairs result source dateString | 
	result := OrderedCollection new.
	source := {'Be creative and expressive (cr)'.
'Become immersed in the activity (im)'.
 'Enjoy using the system or tool (en)'.  
'Explore many different ideas, outcomes, or possibilities (ex)'.
'Produce results that are worth the effort I put in (pr)'.
'Work with other people (co)'}. 
	source withIndexDo: [:object :index |
		(source allButFirst: index) do: [:o | result add: {object . o}] ].
	pairs := (result shuffle collect: [:p | p joinSeparatedBy: ' vs ']) joinSeparatedBy: String cr , String cr.
	
	dateString := self date printString.
	  
	^ dateString , self initialStringContent , pairs , String cr