initialization
initializeWithTranslation: anTranslation in: aCollection
	self initialize.
	translationsList  := aCollection.
	suggestionList  := SortedCollection sortBlock: [ :x :y | x suggestion >  y suggestion ].
	 self translation: anTranslation.
	self voteDone:  anTranslation voted .
 	self suggestions: anTranslation suggestions .
	self suggestionsKeys: anTranslation suggestionsKeys .
	anTranslation suggestions keysAndValuesDo: [ :aKey :Value | self addSuggestion:aKey  translation:  anTranslation" (self suggestions at: aKey)"  ]
	
	