rendering
renderUserOptionOn: html
	"Refactoring to RadioButton !"

	html mdlButton
		raised;
		id: 'adminButton';
		onClick: (html jQuery ajax script: [ :s | self setUser: 0 ]);
		onClick:((html jQuery id: 'localizationComponent') load html:[:r |  
			localizationComponent :=  CWTranslationsListComponent new.
			 r render:  localizationComponent] );
	"	localizationComponent"
		"onClick: ((html jQuery id: 'adminButton') load  html: [ :r |  localizationComponent  := WAComponent new;  r render:  localizationComponent ]);"
		
		onClick: (html jQuery ajax script: [ :s | s << (s jQuery: 'adminButton' asSymbol) html: '👤' , (self localize: 'Admin') ]);
		onClick:
			(html jQuery ajax
				script:
					[ :s | 1 to: 3 do: [ :each | s << (s jQuery: ('userButton-' , each asString) asSymbol) html: (self localize: 'User') , ' ' , each asString ] ]);
		with: [ self session userID = 0
				ifTrue: [ html text: '👤' , (self localize: 'Admin') ]
				ifFalse: [ html text: (self localize: 'Admin') ] ].
	1 to: 3 do: [ :each | 
		html mdlButton
			raised;
			id: 'userButton-' , each asString;
			onClick: (html jQuery ajax script: [ :s | self setUser: each ]);
			onClick:((html jQuery id: 'localizationComponent') load html:[:r |  
			localizationComponent :=  CWTranslationsListComponent new.
			 r render:  localizationComponent] );
			onClick:
				(html jQuery ajax
					script:
						[ :s | 1 to: 3 do: [ :eachUser | s << (s jQuery: ('userButton-' , eachUser asString) asSymbol) html: (self localize: 'User') , ' ' , eachUser asString ] ]);
			onClick:
				(html jQuery ajax
					script: [ :s | s << (s jQuery: ('userButton-' , each asString) asSymbol) html: '👤' , (self localize: 'User') , ' ' , each asString ]);
			onClick: (html jQuery ajax script: [ :s | s << (s jQuery: 'adminButton' asSymbol) html: (self localize: 'Admin') ]);
			with: [ self session userID = each
					ifTrue: [ html text: '👤' , ((self localize: 'User') , ' ' , each asString) ]
					ifFalse: [ html text: (self localize: 'User') , ' ' , each asString ] ] ]