*Home-UI
sortBySomeIncludedNumber

	<rackOperationLabel: 'sort lines by included number' inContextMenus: true>
	((self asString lines sorted: [:a :b | |t|
		t := [:s | s select: [:c | c isDigit]].
		(t value: a) asNumber < (t value: b) asNumber]) joinSeparatedBy: String crlf) inspect