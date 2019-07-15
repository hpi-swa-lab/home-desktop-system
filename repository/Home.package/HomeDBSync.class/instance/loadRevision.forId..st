as yet unclassified
loadRevision: aRevision forId: aId

	| newObject oldObjects |
	oldObjects := DomainObject allSubInstances select: [:each | each uuid asString = aId].
	newObject := self database at: aId.
	oldObjects do: [:oldObject | oldObject ifNotNil: [
		(soup includes: oldObject) ifTrue: [soup doRemove: oldObject].
		oldObject deleted: true.
		oldObject becomeForward: newObject.
		oldObject changed.]].
      newObject addDependent: self.
	newObject ensureBeingPersisted.