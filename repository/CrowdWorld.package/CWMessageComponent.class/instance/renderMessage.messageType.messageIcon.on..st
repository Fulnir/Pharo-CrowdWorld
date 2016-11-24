rendering
renderMessage: aString messageType: aType messageIcon: aIcon on: html
	| anAlert emojiIcon |
	emojiIcon := '👌'.
	anAlert := html tbsAlert.
	'warning' = aType
		ifTrue: [ anAlert beWarning.
			emojiIcon := '⚠️' ].
	'error' = aType
		ifTrue: [ anAlert beError.
			emojiIcon := '🐞' ].
	'info' = aType
		ifTrue: [ anAlert beInfo.
			emojiIcon := 'ℹ️' ].
	anAlert
		with: [ html span
				class: 'i icon-' , aIcon;
				style: 'float: left; margin-right: .3em;'.
			html text: emojiIcon.
			html text: aString ]