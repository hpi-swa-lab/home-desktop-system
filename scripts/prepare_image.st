|package zip ws rackIcon contact editor|

"Update the image."
[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true.

Installer ensureRecentMetacello.

"If e.g. your tests change code in the image dynamically, the image will require you to set
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'HomeInstallation'.

"Load Home into image"
Metacello new
  baseline: 'Home';
  repository: 'github://hpi-swa-lab/home-desktop-system/repository';
  load: 'release'.

"Making sure the Icons are initialized"
RIcons initialize.

"Prepare Image a little bit"
PluggableSystemWindow allInstances do: #abandon.
ActiveWorld color: (Color r: 0.987 g: 0.987 b: 0.727).
Rack activateRackDragAndDrop: true.
Preferences setPreference: #easySelection toValue: true.
HomePHTheme new use.

ws := Workspace new.
ws contents: '# Welcome to your New Home
This is just an example object which you can safely delete.'.
TheRack add: ws named: 'Welcome'.
TheRack createFolder: 'An Ordinary Folder'.
TheRack createFolder: 'All available domain classes' withQuery: [DomainObject allSubclasses].
TheRack createFolder: 'People' withQuery: [Person all].

RRackTool open.
(ActiveWorld submorphNamed: 'Your Object Rack') bounds: (40@120 corner: 385@380).
PreferenceWizardMorph allInstances do: #abandon.
rackIcon := TheRack worldIcon.
ActiveWorld addMorph: rackIcon.
rackIcon position: 930@30.

contact := Person new
  email: 'hi@patrickrein.de';
  fullName: 'Patrick Rein';
  note: 'If you have questions, comments, suggestions just
drop me an email. I am happy to help :)';
  yourself.
editor := ObjectEditor openOn: contact.
editor bounds: (430@120 corner: 900@370).


SmalltalkImage current snapshot: true andQuit: true.
