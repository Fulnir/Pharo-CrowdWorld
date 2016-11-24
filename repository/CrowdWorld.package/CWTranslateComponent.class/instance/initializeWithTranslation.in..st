initialization
initializeWithTranslation: anTranslation in: aCollection
	self initialize.
	translationsList  := aCollection.
	 self translation: anTranslation.
	self voteDone:  anTranslation voted .
 	self suggestions: anTranslation suggestions .
	self suggestionsKeys: anTranslation suggestionsKeys .
	
	