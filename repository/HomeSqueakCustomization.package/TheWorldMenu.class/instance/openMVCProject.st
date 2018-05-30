commands
openMVCProject
	"Open a new MVC project (only if MVC is present)"
	Smalltalk at: #MVCProject ifPresent:[:projClass|
		ProjectViewMorph openOn: projClass new.
	].