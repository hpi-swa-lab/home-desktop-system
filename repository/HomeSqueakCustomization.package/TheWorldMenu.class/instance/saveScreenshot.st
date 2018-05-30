action
saveScreenshot
	"Make a screenshot of the world and save it to a file"

	SampledSound playSoundNamed: 'camera'.
	PNGReadWriter putForm: myWorld imageForm onFileNamed:
		(FileDirectory default nextNameFor: 'SqueakScreen' extension:'png').
