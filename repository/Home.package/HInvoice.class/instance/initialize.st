as yet unclassified
initialize
	super initialize.
	self description: Text new;
		invoicedTo: {};
		paid: false;
		title: '';
		total: HMoney new