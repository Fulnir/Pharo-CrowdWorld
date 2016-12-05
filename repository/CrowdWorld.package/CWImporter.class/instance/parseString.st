reading
parseString
	| result |
	self expectChar: $".
	result := self stringStreamContents: [ :astream |
		[ stream atEnd or: [ stream peek = $"] ] 
			whileFalse: [ 
				astream nextPut: self parseCharacter ] ].
	self expectChar: $".
	^ result