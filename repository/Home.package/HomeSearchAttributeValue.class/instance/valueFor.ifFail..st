evaluating
valueFor: anObject ifFail: exceptionBlock

	(anObject respondsTo: self selector) ifFalse: [^ exceptionBlock value].
	^ anObject perform: self selector