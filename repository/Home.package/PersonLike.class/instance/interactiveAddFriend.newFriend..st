as yet unclassified
interactiveAddFriend: obj newFriend: otherObj
	
	<rackOperationLabel: 'add friend' inContextMenus: true>
	<parameterTypes: #(PersonLike)>
	obj friends: ((obj ?? #friends) , {otherObj}) asOrderedCollection