private
updateEditingWidgetIn: aRow for: aWrapper

	aRow editingWidget: ((aWrapper valueEditorWidgetWith: self commandHistory)
									hResizing: #spaceFill;
									yourself).