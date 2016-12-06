testing
tearDown
	cwDatabase translationsCollection drop.
	cwDatabase mongo close
	