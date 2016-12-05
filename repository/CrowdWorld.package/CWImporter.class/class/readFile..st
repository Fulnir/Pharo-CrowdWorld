as yet unclassified
readFile: fileName
	|stream reader|
	[ stream := fileName asFileReference readStream.
	  reader := self on: stream.
	  reader read ] ensure: [stream close ].
	^reader