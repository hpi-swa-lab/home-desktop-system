toolbuilder-compatability
notifyModelAboutTextChanges

	self setTextSelector ifNotNil: [self model perform: self setTextSelector with: self getTextFromInnerMorphs]