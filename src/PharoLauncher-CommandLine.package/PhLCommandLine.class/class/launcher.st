command line
launcher
	<commandline>
	^ (ClapCommand withName: 'launcher')
			description: 'Manager for Pharo images';
			add: ClapCommand forHelp;
			add: self listCommand;
			add: self runCommand;
			add: self buildCommand;
			meaning: [ :args |
				args context stdout << 'Hello from the Pharo Launcher command-line tool (WIP)'; lf ]