*Home-UI
openFileWithPath: aPath
	"On multiOS systems the paths to 1 external item can be different, depending on which OS is used. This is NOT handled here"
	Smalltalk platformName = 'Win32' ifTrue: [
		" aPath replaceStrings: {'/' -> '\'}"
		^OSProcess command: 'explorer "' , aPath, '"'].
	
	Smalltalk platformName = 'Mac OS' ifTrue: [
		^OSProcess command: 'open "' , aPath, '"'].
	
	Smalltalk platformName = 'unix' ifTrue: [
		^OSProcess command: 'xdg-open "' , aPath, '"'].