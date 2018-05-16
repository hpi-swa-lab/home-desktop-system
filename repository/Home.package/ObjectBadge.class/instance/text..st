accessing
text: aString

	label ifNil: [
		label := PHLabel new
			wrap: #word;
			align: #(start center);
			expand: true;
			yourself.
		self add: label at: 1.
		self class applyStyleAttributes: label.].
		
	
	label text: aString