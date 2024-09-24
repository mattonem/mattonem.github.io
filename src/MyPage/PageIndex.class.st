Class {
	#name : 'PageIndex',
	#superclass : 'PjFileBasedWebApp',
	#traits : 'StaticComponentHolder',
	#classTraits : 'StaticComponentHolder classTrait',
	#classInstVars : [
		'staticComponents',
		'translator'
	],
	#category : 'MyPage-Core',
	#package : 'MyPage',
	#tag : 'Core'
}

{ #category : 'accessing' }
PageIndex class >> _translator [

	<pharoJsSkip>
	^ translator ifNil: [ translator := I18NTranslator forLanguage: 'EN' ]
]

{ #category : 'accessing' }
PageIndex class >> appClasses [
	^ super appClasses , { I18NTranslator }
]

{ #category : 'accessing' }
PageIndex class >> bridgeClass [
	<pharoJsSkip>
	^ PjBridge
]

{ #category : 'accessing' }
PageIndex class >> bridgeClientClass [
	<pharoJsSkip>
	
	^ PjZnHostedBrowserBridgeClient
]

{ #category : 'accessing' }
PageIndex class >> cardWith: withBlock on: html [

	html div
		class: 'col-2';
		with: [
			html div
				class: 'card ';
				with: withBlock ]
]

{ #category : 'accessing' }
PageIndex class >> exporterClass [

	<pharoJsSkip>
	^ PjFileExporterWithIndexHtml
]

{ #category : 'accessing' }
PageIndex class >> generateHtmlUsing: html [

	<pharoJsSkip>
	html div
		class: 'container-md';
		with: [ :cont |
			html paragraph with:
					(self translator translationFor: #helloMyNameIs).
			html heading
				level: 1;
				with: (self translator translationFor: #name).
			html paragraph with: (self translator translationFor: #intro) ].
	html section
		class: 'container-md';
		with: [ :cont |
			html div
				class: 'card';
				with: [
					html div
						class: 'card-header';
						with: [
							html heading
								level: 2;
								with: (self translator translationFor: #kataHeader) ].
					html div
						class: 'card-body row';
						attributeAt: 'data-masonry' put: '{"percentPosition": true }';
						with: [ self renderKataOn: html ] ] ]
]

{ #category : 'accessing' }
PageIndex class >> initialize [ 
	<pharoJsSkip>
	translator := nil.
]

{ #category : 'accessing' }
PageIndex class >> listItemUrl: url with: blockOrString on: html [

	html listItem
		class: 'list-group-item';
		with: [
			html anchor
				url: url;
				with: blockOrString ]
]

{ #category : 'accessing' }
PageIndex class >> renderBrowserDetailsOn: html [

	<pharoJsSkip>
	<renderKataOrder: 1>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: 'Browser details' ].
			html image
				class: 'card-img';
				url: '	https://cdn-icons-png.freepik.com/256/12591/12591754.png'.

			html anchor
				class: 'stretched-link';
				url: 'BrowserDetails' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderGeoHashViewer: html [
	"https://cdn-icons-png.freepik.com/256/717/717498.png"

	<pharoJsSkip>
	<renderKataOrder: 4>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: 'Geohash Viewer' ].
			html image
				class: 'card-img';
				url: 'https://cdn-icons-png.freepik.com/256/717/717498.png'.

			html anchor
				class: 'stretched-link';
				url: 'WCGeohashWebApp' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderGeoHashViewerAuto: html [

	<pharoJsSkip>
	<renderKataOrder: 5>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: 'Geohash Automatic Cover' ].
			html image
				class: 'card-img';
				url: 'https://cdn-icons-png.freepik.com/256/717/717498.png'.

			html anchor
				class: 'stretched-link';
				url: 'WCGeohashWebApp/auto' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderKataOn: html [

	<pharoJsSkip>
	((Pragma allNamed: #renderKataOrder: in: self class) sort: [ :a :b |
		 (a argumentAt: 1) < (b argumentAt: 1) ]) do: [ :aPragma |
		aPragma method valueWithReceiver: self arguments: { html } ]
]

{ #category : 'accessing' }
PageIndex class >> renderUBNameGeneratorOn: html [

	<pharoJsSkip>
	<renderKataOrder: 2>
	self
		cardWith: ["https://cdn-icons-png.freepik.com/256/16060/16060923.png"
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: 'Ubuntu-like release names' ].
					html image
				class: 'card-img';
				url: 'https://cdn-icons-png.freepik.com/256/5969/5969193.png'.
		
					html anchor
						class: 'stretched-link';
						url: 'UBNameGenerator'  ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderWhereIsMyIp: html [
	"https://cdn-icons-png.freepik.com/256/1692/1692037.png"

	<pharoJsSkip>
	<renderKataOrder: 3>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: 'Where is my IP?' ].
			html image
				class: 'card-img';
				url: 'https://cdn-icons-png.freepik.com/256/1692/1692037.png'.

			html anchor
				class: 'stretched-link';
				url: 'PJSIPGeolocationWebApp' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> staticComponentsSerialized [

	<jsLiteralGenerator>
	^ self _staticComponents asPhxJsonString
]

{ #category : 'accessing' }
PageIndex class >> translator [

	^ translator ifNil: [ 
		  translator := PhxJsonReader readFromString:
			                      self translatorSerialized ]
]

{ #category : 'accessing' }
PageIndex class >> translatorSerialized [

	<jsLiteralGenerator>
	^ self _translator asPhxJsonString
]

{ #category : 'accessing' }
PageIndex class >> updateHtmlRoot: root [

	<pharoJsSkip>
	root language: 'en'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css'.
	root stylesheet url:
		'https://unpkg.com/leaflet@1.9.4/dist/leaflet.css'.
	root javascript url:
		'https://unpkg.com/leaflet@1.9.4/dist/leaflet.js'.
	root javascript url:
		'https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js'
]
