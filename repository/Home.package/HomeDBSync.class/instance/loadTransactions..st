accessing
loadTransactions: transactions

	transactions do: [:transaction |
		(transaction at: 'changes') do: [:change |
			|revision |
			revision := change at: 'rev'.
			(revision = '') ifFalse: [self loadRevision: revision forId: (transaction at: 'id')]]]