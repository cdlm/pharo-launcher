command line
listCommand
	^ (ClapCommand withName: 'list')
		description: 'List known images';
		add: ClapFlag forHelp;
		meaning: [ :args |
			args atName: 'help' ifFound: [ :help | help value; exitSuccess ].
			args validateAll.
			
			(self with: args) executeList ]