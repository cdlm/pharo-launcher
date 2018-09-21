command line
runCommand
	^ (ClapCommand withName: 'run')
		description: 'Launch specified image';
		add: ((ClapPositional withName: 'image')
			description: 'Name of the image to launch');
		meaning: [ :args |
			args context stdout << '(TODO: should launch an image)'; lf
		]