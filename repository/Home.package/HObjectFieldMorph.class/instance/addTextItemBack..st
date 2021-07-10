objectItem-creation
addTextItemBack: aTextItem

	self text: (self text copyReplaceFrom: self text size + 1 to: self text size with: aTextItem)