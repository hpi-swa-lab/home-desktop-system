layout
layout: aMorph in: newBounds

	| morphs offset |
	morphs := aMorph submorphs.
	offset := newBounds topLeft.
	
	morphs first topLeft: offset.
	morphs first width: morphs first layoutFrame rightOffset - aMorph cellInset.
	
	morphs third width: morphs third layoutFrame leftOffset abs - aMorph cellInset.
	
	offset := offset + (morphs first width@0) + (aMorph cellInset@0).
	morphs second topLeft: offset.
	morphs second width: (newBounds width - morphs first width) - morphs third width.
	morphs second fullBounds.
	
	morphs third topLeft: morphs second topRight + (aMorph cellInset@0).
	morphs third height: morphs second height.

	aMorph height: morphs second bottom - aMorph top.