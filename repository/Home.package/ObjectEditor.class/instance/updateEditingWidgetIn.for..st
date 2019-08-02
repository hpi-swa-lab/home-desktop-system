private
updateEditingWidgetIn: aRow for: aWrapper

	aRow editingWidget: ((aWrapper valueEditorWidgetWith: self commandHistory)
									layoutFrame: (LayoutFrame 
										fractions: (0@0 corner: 1@1) 
										offsets: (self labelWidth@0 corner: 0@0));
									hResizing: #spaceFill;
									yourself).