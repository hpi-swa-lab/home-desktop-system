layout
layout: morph in: bounds

	| offset availableVerticalSpace numSpaceFillers morphs noFillers |
	self cellInset: morph cellInset.
	self layoutInset: morph layoutInset.
	
	morphs := morph submorphs select: [:m | m visible and: [m disableTableLayout not]].
	availableVerticalSpace := bounds height - self layoutInset top - self layoutInset bottom - (morphs size * (self cellInset - 1)).
	numSpaceFillers := 0.
	morphs do: [:m |
		m fullBounds.
		m vResizing ~= #spaceFill
			ifTrue: [availableVerticalSpace := availableVerticalSpace - m height]
			ifFalse: [numSpaceFillers := numSpaceFillers + 1]].
	noFillers := numSpaceFillers = 0.
	
	availableVerticalSpace := availableVerticalSpace max: 0.
	offset := morph topLeft + self layoutInset topLeft.
	morphs do: [:s |
		s
			width: morph width - self layoutInset left - self layoutInset right;
			topLeft: offset.
		
		s vResizing = #spaceFill ifTrue: [
			s height: availableVerticalSpace // numSpaceFillers.
			numSpaceFillers := numSpaceFillers - 1.
			availableVerticalSpace := availableVerticalSpace - s height].
		
		"Workaround for morphs that change height if width changes (e.g., text morphs)."
		s fullBounds.
		
		offset := offset x @ (offset y + s height + self cellInset)].
	
	"Vertical shrink wrap if there are no space fillers."
	noFillers ifTrue: [
		morph height: offset y - morph top - self cellInset + self layoutInset bottom].