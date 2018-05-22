*Home-UI
objectEditorWrapperFor: aSelector

	^ ObjectEditorWrapper
			with: (self getAdditionalStateAt: aSelector)
			name: (aSelector asString contractTo: 32) capitalized
			model: self
			setter: [:newValue | 
				self perform: aSelector asMutator with: newValue]
			remover: [self removeAdditionalStateAt: aSelector]