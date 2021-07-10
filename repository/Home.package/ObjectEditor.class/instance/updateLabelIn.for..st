private
updateLabelIn: aRow for: aWrapper

	| labelText |
	labelText := aWrapper label asText.
	labelText addAttribute: TextAlignment rightFlush.
	
	aRow label: (UiLabel new
						text: labelText;
						hResizing: #rigid;
						width: self labelWidth;
						yourself).