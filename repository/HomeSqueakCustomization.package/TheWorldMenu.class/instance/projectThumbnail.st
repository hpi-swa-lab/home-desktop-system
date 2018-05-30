action
projectThumbnail
	"Offer the user a menu of project names. Attach to the hand a thumbnail of the project the user selects."

	| projName pr names values |
	names := OrderedCollection with: Project current name, ' (current)'.
	values := OrderedCollection with: Project current name.
	Project allNames do: [:n | names add: n. values add: n].
	projName := UIManager default 
		chooseFrom: names values: values lines: #(1) title: 'Select a project'.
	projName ifNotNil:
		[(pr := Project named: projName) 
			ifNotNil: [myHand attachMorph: (ProjectViewMorph on: pr)]
			ifNil: [self inform: 'can''t seem to find that project']].