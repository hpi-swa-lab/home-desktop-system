private
forAllImplementingClasses: candidateBlock

	self candidateClasses do: [:candidateClass | | candidate exceptionSeen |
		candidate := candidateClass new.
		candidate when: #objectEditorStructureChanged send: #eventArrived to: self.
		exceptionSeen := false.
		[[candidate objectEditorAdd: Object new] valueSupplyingAnswer: 'a']
			on: Error do: [:e | 
				self assert: 'Cannot add anything to general objects' equals: e messageText.
				exceptionSeen := true.].
		exceptionSeen not ifTrue: [
			candidateBlock value: candidate].
		self recordedEvents removeAll]