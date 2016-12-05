as yet unclassified
openFile
	"CWImporter new openFile"
	| filename |
	"Ordnerauswahl!! Ordnername Locale"
	filename := UITheme builder 
							chooseFileName: 'Strings file' 
							extensions: #('strings') 
							path: nil 
							preview: nil.
	filename isNil ifTrue:[^nil].
	self importFile: filename