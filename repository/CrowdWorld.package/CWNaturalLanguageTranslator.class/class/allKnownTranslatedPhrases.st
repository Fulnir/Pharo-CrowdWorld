phrases
allKnownTranslatedPhrases
	"
	
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
		CWNaturalLanguageTranslator addCountriesToKnownTranslatedPhrases.
		CWNaturalLanguageTranslator addLanguagesToKnownTranslatedPhrases.
	
	CWNaturalLanguageTranslator updateAllPhrases.
	"

	self cWAllKnownTranslatedPhrasesDictionary
		ifNil: [ self cWAllKnownTranslatedPhrasesDictionary: Dictionary new.
			self for: 'Translations' translation: 'Translations' locale: (WALocale language: 'en').
			self for: 'Localization' translation: 'Localization' locale: (WALocale language: 'en').
			self for: 'CW_Key' translation: 'Key' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The key for a phrase.'.
			self for: 'CW_Base' translation: 'Base' locale: (WALocale language: 'en' ) group: 'CrowdWorld' comment:'The base language is english.'.
			self for: 'CW_Key' translation: 'Key' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The key for a phrase.'.
			self for: 'CW_Group' translation: 'Group' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'Phrases group like countries. languages ...'.
			self for: 'CW_Translation' translation: 'Translation' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The current tranlation for a phrase'.
			self for: 'CW_SuggestTranslation' translation: 'Suggest a new translation' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The placeholder text for the suggestion field.'.
			self for: 'CW_Lang_Select_Tooltip' translation: 'If you want to edit a language other than your own, select it here. Then click the ''Submit'' button' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'Tooltip for selection'.
			
			self for: 'Suggestion' translation: 'Suggestion' locale: (WALocale language: 'en').
			self for: 'Help_Support' translation: 'Help' locale: (WALocale language: 'en').			
			self for: 'About' translation: 'About' locale: (WALocale language: 'en').
			self for: 'Cancel' translation: 'Cancel' locale: (WALocale language: 'en').
			
			self for: 'About' translation: 'Über' locale: (WALocale language: 'de').
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de').
			self for: 'Help_Support' translation: 'Hilfe' locale: (WALocale language: 'de').	
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de' country: 'DE').
			self for: 'Translations' translation: 'Übersetzung' locale: (WALocale language: 'de').
			self for: 'Localization' translation: 'Lokalisierung' locale: (WALocale language: 'de').
			self for: 'Key' translation: 'Schlüssel' locale: (WALocale language: 'de').
			self for: 'Base' translation: 'Basis' locale: (WALocale language: 'de').
			self for: 'Suggestion' translation: 'Vorschläge' locale: (WALocale language: 'de').
			
			self welcome.
			
		].
	 ^ self cWAllKnownTranslatedPhrasesDictionary