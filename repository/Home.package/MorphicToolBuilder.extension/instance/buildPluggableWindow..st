*Home-UI
buildPluggableWindow: aSpec
	| widget |

	aSpec layout == #proportional ifFalse:[
		"This needs to be implemented - probably by adding a single pane and then the rest"
		^self error: 'Not implemented'.
	].

	widget := (self windowClassFor: aSpec) new.
	self register: widget id: aSpec name.
	
	widget model: aSpec model.

	"Set child dependent layout properties."
	widget wantsPaneSplitters: (aSpec wantsResizeHandles ifNil: [true]).
	self setLayoutHintsFor: widget spec: aSpec.
	widget layoutInset: (aSpec padding ifNil: [ProportionalSplitterMorph gripThickness]).
	widget cellInset: (aSpec spacing ifNil: [ProportionalSplitterMorph gripThickness]).
	
	"Now create the children."
	panes := OrderedCollection new.
	aSpec children isSymbol
		ifTrue: [
			widget getChildrenSelector: aSpec children.
			widget update: aSpec children]
		ifFalse: [
			self buildAll: aSpec children in: widget].
	widget setUpdatablePanesFrom: panes.
	
	aSpec label ifNotNil: [:label|
		label isSymbol 
			ifTrue:[widget getLabelSelector: label]
			ifFalse:[widget setLabel: label]].

	aSpec multiWindowStyle notNil ifTrue:
		[widget savedMultiWindowState: (SavedMultiWindowState on: aSpec model)].
	
	aSpec dropFileAccept notNil ifTrue: 
		[widget wantsDroppedFileSelector: aSpec dropFileAccept].
	aSpec dropFile notNil ifTrue: 
		[widget handleDroppedFileSelector: aSpec dropFile].
	
	widget closeWindowSelector: aSpec closeAction.
	self buildHelpFor: widget spec: aSpec. 

	widget bounds: (RealEstateAgent 
		initialFrameFor: widget 
		initialExtent: (aSpec extent ifNil:[widget initialExtent])
		world: self currentWorld).

	^ widget