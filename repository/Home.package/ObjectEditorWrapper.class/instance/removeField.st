actions
removeField

	self onDelete ifNotNil: [:onDeleteBlock | onDeleteBlock value].
	self instance changed.