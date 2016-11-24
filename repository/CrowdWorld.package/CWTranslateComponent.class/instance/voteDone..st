accessing
voteDone: anObject
Transcript  cr; show: 'Button clicked'.
	anObject
		ifTrue: [ translationsList
				do: [ :aTranslation | 
					
					aTranslation toggleBox style: 'display:none' .
					"aTranslation voteDone
						ifTrue: [ ^ self ] "
						] ].
	voteDone := anObject.
	translation voted: anObject