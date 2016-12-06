testing
setUp

	cwDatabase := CWDatabase newTest .
	
	cwDatabase naturalLanguageTranslator cWAllKnownTranslatedPhrasesDictionary: nil.
	
	cwDatabase openMongoTest .
	
	