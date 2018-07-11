private
updateLabelIn: aRow for: aWrapper

	| labelText |
	labelText := aWrapper label asText.
	labelText addAttribute: TextAlignment rightFlush.
	aRow label: (UiLabel new
						text: labelText;
						hResizing: #spaceFill;
						layoutFrame: (LayoutFrame 
							fractions:(0@0 corner: 0@1) 
							offsets: (0@0 corner: self labelWidth@0));
						yourself).