|package zip|

"Update the image."
[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true.

"Get the Metacello configuration (for Squeak users)"
Installer gemsource
    project: 'metacello';
    addPackage: 'ConfigurationOfMetacello';
    install.

"Bootstrap Metacello Preview, using mcz files (#'previewBootstrap' symbolic version"
((Smalltalk at: #ConfigurationOfMetacello) project 
  version: #'previewBootstrap') load.

"Load the Preview version of Metacello from GitHub"
(Smalltalk at: #Metacello) new
  configuration: 'MetacelloPreview';
  version: #stable;
  repository: 'github://dalehenrich/metacello-work:configuration';
  load.

"Now load latest version of Metacello"
(Smalltalk at: #Metacello) new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  get.
(Smalltalk at: #Metacello) new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  load.

"If e.g. your tests change code in the image dynamically, the image will require you to set 
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'Rack'.

"Load Vivide into image"
Metacello new
  baseline: 'Rack';
  repository: 'github://hpi-swa/Rack/repository';
  load: 'tests'.

package := 'Rack'.
categoryNames := #('IconsBase' 'Rack-Core' 'Rack-UI' 'Rack-Tests').
Smalltalk version = 'Squeak5.1' ifTrue: [
  categoryNames := categoryNames , #('ToolBuilder-Kernel' 'ToolBuilder-Morphic')].
zip := ZipArchive new.
categoryNames do: [:categoryName |
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := (MCPackage named: categoryName) workingCopy.
version := workingCopy newVersionWithName: 'release' message: 'release of Rack'.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: categoryName , '.mcz') desiredCompressionLevel: 0.].
installScript := (categoryNames collect: [:categoryName | 'self fileInMonticelloZipVersionNamed: ''' , categoryName , '.mcz''.'])
joinSeparatedBy: String crlf.
zip addString: installScript as: 'install/preamble'.
zip writeToFileNamed: package , '.sar'.
SmalltalkImage current snapshot: false andQuit: true.
