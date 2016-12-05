hooks
setUser: aUserID on: html
	 self session userID: aUserID.
	localizationComponent := CWTranslationsListComponent new.
html render:localizationComponent 