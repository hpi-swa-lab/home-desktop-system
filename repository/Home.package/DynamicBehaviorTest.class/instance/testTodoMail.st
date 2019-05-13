as yet unclassified
testTodoMail
	|obj|
	obj := ToDo new.
	self assert: (obj isOfType: #EmailHaving) not.
	obj email: 'foo@bar.de'.
	self assert: (obj isOfType: #EmailHaving).
	obj delete.