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
				baseline: 'Widgets' with: [
					spec
						repository: 'github://hpi-swa/widgets:master/repository';
						loads: #(full)];
				baseline: 'Pheno' with:
					[ spec repository: 'github://tom95/Pheno:master/src' ];
				package: 'Home' with: [spec requires: #('libraries')];
				package: 'HomeSqueakCustomization' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Home');
				group: 'libraries' with: #('Rack' 'Ohm' 'Widgets' 'Pheno');
				group: 'release' with: #('default' 'HomeSqueakCustomization')];    
		yourself