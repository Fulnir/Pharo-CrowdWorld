rendering
renderTranslationsOn: html	
	| currentItem itemId | 
	html section
		id: 'main';
		with:[

			html unorderedList
				id: 'translation-list';
	"			 script: (html jQuery new selectable
         onStop: (html jQuery ajax
            callback: [ :value | selected := value asSet .]
            passengers: (html jQuery this find: '.ui-selected')));"

				script: (html jQuery this 
									on: 'click' 
									selector: '.toggle' 
									do: ((html jQuery ajax serializeWithHidden: (html jQuery expression: (JSStream on: 'event.target'))) asFunction: #(event)));
			
				script: (html jQuery this 
									on: 'click' 
									selector: '.lock' 
									do: ((html jQuery ajax 
													callback:[:passengers | passengers first remove]
													passengers: (((html jQuery expression: (JSStream on:'event.target')) closest: 'li'));
													onComplete: (((html jQuery expression: (JSStream on:'event.target')) closest: 'li') remove)) asFunction: #(event)));
				script: (html jQuery this
							on: 'click'
							selector: '.view>label'
							do: (((((html jQuery expression: (JSStream on: 'event.target')) hide closest:'li') find: '.edit') show) asFunction:#(event)));
				script: (html jQuery this
								on: 'change'
								selector:'.edit'
								do: ((
									html jQuery ajax
										serialize: (html jQuery expression: (JSStream on:'event.target'));
										callback: [ :passengers | currentItem := passengers first ]
										passengers: ((html jQuery expression: (JSStream on:'event.target')) closest:'li');
										callback: [ :id | itemId := id ]
										value: (JSStream on:'$(event.target).closest("li").get(0).id');
										script: [ :s |  s << (((s jQuery id: itemId) find: 'label') html: currentItem description)];
										onComplete: ((((html jQuery expression: (JSStream on: 'event.target')) closest:'li') find: '.edit') hide, (((html jQuery expression: (JSStream on: 'event.target')) closest:'li') find: 'label') show))
								 asFunction: #(event)));
				with:[self translationsList  do:[:each |   "html listItem
               class: 'ui-corner-all';
               class: 'ui-selected' if: (selected includes: each);
               passenger: each;
               with: each."
each renderOn: html   ]]].

	