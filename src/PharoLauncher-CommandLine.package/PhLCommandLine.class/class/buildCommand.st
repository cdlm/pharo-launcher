command line
buildCommand
	^ (ClapCommand withName: 'new')
		description: 'Create a new image or template';
		add: ((ClapPositional withName: 'image')
			description: 'Name of the new image');
		add: ((ClapPositional withName: 'template')
			description: 'Name of the template to instanciate');
		meaning: [ :args |
			args context stdout << '(TODO: should make a new image)'; lf
		]