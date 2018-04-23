baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Rack' with: 
					[ spec repository: 'github://hpi-swa/Rack:master/repository' ];
				baseline: 'Ohm' with: 
					[ spec repository: 'github://hpi-swa/Ohm-S:master/packages' ];
				package: 'Home' with: [spec requires: #('libraries')];
				yourself.
			spec
				group: 'default' with: #('Home');
				group: 'libraries' with: #('Rack' 'Ohm')];
				yourself