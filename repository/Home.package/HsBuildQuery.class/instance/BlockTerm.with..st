actions
BlockTerm: thisNode with: codeBlock

	^ HsBlockTerm methodSource: (self value: codeBlock)