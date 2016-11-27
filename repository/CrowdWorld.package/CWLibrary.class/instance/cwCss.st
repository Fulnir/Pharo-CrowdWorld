styles
cwCss
^ '
body {
	font: 14px ''Helvetica Neue'', Helvetica, Arial, sans-serif;
	line-height: 1.4em;
	background: #eaeaea url(''bg.png'');
	color: #4d4d4d;
}

button {
	margin: 0;
	padding: 0;
	border: 0;
	background: none;
	font-size: 100%;
	vertical-align: baseline;
	font-family: inherit;
	color: inherit;
	-webkit-appearance: none;
	/*-moz-appearance: none;*/
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
}
/* */
.note { 
	padding: 0px;
	padding-left: 10px;
	font-size: 14px;
	background-color: rgba(255, 255,200, 0.8); 
	/*background: #eaeaea url(''notebg.png'') center center ; 
	background-size: 100%  100%;
	background-repeat: no-repeat;*/
	color: #220457;
 }
#translation-list {
	margin: 0;
	padding: 0;
	list-style: none;
}

#translation-list li {
	position: relative;
	font-size: 18px;
	border-bottom: 1px dotted #ccc;
}

#translation-list li:last-child {
	border-bottom: none;
}
#suggestions-list {
	margin: 0;
	padding: 0;
	list-style: none;
}
#suggestions-list li {
	position: relative;
	width: 250px;
	font-size: 16px;
	border-bottom: 1px dotted #ccc;
}
/* Ein Schloß */
#translation-list li .lock {
	display: none;
	position: absolute;
	top: 0;
	left: 20px;
	bottom: 0;
	width: 40px;
	height: 40px;
	margin: auto 0;
	font-size: 22px;
	color: #a88a8a;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
	transition: all 0.2s;
}
#translation-list  li .lock:hover {
	text-shadow: 0 0 1px #000,
				 0 0 10px rgba(43, 4, 87, 0.8);
	-webkit-transform: scale(1.3);
	-moz-transform: scale(1.3);
	-ms-transform: scale(1.3);
	-o-transform: scale(1.3);
	transform: scale(1.3);
}
#translation-list li .lock:after {
	content: ''🔓'';
}

#translation-list li:hover .lock {
	display: block;
}
/* Ein Haken suggestions-list*/
*[id^=''suggestions-list-'']  li .vote {
	display: none;
	position: absolute;
	top: 0;
	left: 10px;
	bottom: 0;
	width: 30px;
	height: 30px;
	margin: auto 0;
	font-size: 22px;
	color: #a88a8a;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
	transition: all 0.2s;
}

*[id^=''suggestions-list-'']  li .vote:hover {
	text-shadow: 0 0 1px #000,
				 0 0 10px rgba(43, 4, 87, 0.8);
	-webkit-transform: scale(1.3);
	-moz-transform: scale(1.3);
	-ms-transform: scale(1.3);
	-o-transform: scale(1.3);
	transform: scale(1.3);
}
*[id^=''suggestions-list-''] li .vote:after {
	content: ''👌'';
}


*[id^=''suggestions-list-'']  li:hover .vote {
	display: block;
}

/* New Suggestion imptfield*/
#translation-list li .new-suggestion {
	display: none;	
	width: 250px;
	height: 16px;
	margin: auto 0;
	font-size: 14px;
	color: #a88a8a;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
	transition: all 0.2s;
}
/*
#translation-list li .new-suggestion:hover {
	text-shadow: 0 0 1px #000,
				 0 0 10px rgba(43, 4, 87, 0.8);
	-webkit-transform: scale(2.0);
	-moz-transform: scale(2.0);
	-ms-transform: scale(2.0);
	-o-transform: scale(2.0);
	transform: scale(2.0);
}*/

#translation-list li:hover .new-suggestion {
	display: block;
}
'