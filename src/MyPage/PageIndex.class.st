Class {
	#name : 'PageIndex',
	#superclass : 'PjFileBasedWebApp',
	#traits : 'StaticComponentHolder',
	#classTraits : 'StaticComponentHolder classTrait',
	#pools : [
		'MasonryPool'
	],
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
PageIndex class >> _translator: aTranslator [

	<pharoJsSkip>
	translator := aTranslator
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
		class: 'col-xl-3 col-lg-4 mb-5 col-sm-6 item';
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
		class: 'container';
		with: [
			html div
				class: 'row';
				with: [ :cont |
					html div
						class: 'col';
						with: [
							html paragraph with:
									(self translator translationFor: #helloMyNameIs).
							html heading
								level: 1;
								with: (self translator translationFor: #name).
							html paragraph with: (self translator translationFor: #intro).
							(self translator translationFor: #description) lines do: [ :line |
								html paragraph with: line ] ] ].
			html section
				class: 'row mb-5';
				with: [ :cont |
					html div
						class: 'col';
						with: [
							html div
								class: 'card';
								with: [
									html div
										class: 'card-header';
										with: [
											html heading
												level: 2;
												with: (self translator translationFor: #projectHeader) ].
									html div
										class: 'card-body';
										with: [
											html div
												class: 'row';
												attributeAt: 'data-masonry'
												put: '{&quot;percentPosition&quot;: true }';
												with: [ self renderProjectOn: html  ] ] ] ] ].
			html section
				class: 'row mt-5';
				with: [ :cont |
					html div
						class: 'col';
						with: [
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
										class: 'card-body';
										with: [
											html div
												class: 'row';
												attributeAt: 'data-masonry'
												put: '{&quot;percentPosition&quot;: true }';
												with: [ self renderKataOn: html ] ] ] ] ] ].
			
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

{ #category : 'cards' }
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
						with: (self translator translationFor: #browserDetails) ].
			html image
				class: 'card-img';
				url: '/assets/browser_details.svg';
				altText: 'Illustration of browser details'.

			html anchor
				class: 'stretched-link';
				url: '/BrowserDetails' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderDiamondSquare: html [

	<pharoJsSkip>
	<renderKataOrder: 7>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #diamondSquare) ].
			html image
				class: 'card-img';
				url: '/assets/diamond_square_algorithm.svg';
				altText: 'Visualization of the diamond-square algorithm'.

			html anchor
				class: 'stretched-link';
				url: '/Kata-DiamondSquareAlgo/' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderGameOfLife: html [

	<pharoJsSkip>
	<renderKataOrder: 8>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #gameOfLife) ].
			html image
				class: 'card-img';
				url: '/assets/conway_game_of_life.svg';
				altText: 'Representation of Conway''s Game of Life'.

			html anchor
				class: 'stretched-link';
				url: '/Kata-GameOfLife/' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderGameboxOn: html [

	<pharoJsSkip>
	<renderProjectOrder: 1>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #gamebox) ].
			html image
				class: 'card-img';
				url: '/assets/composite_framework_gamebox.svg';
				altText: 'Framework for interactive HTML canvas'.
			html div
				class: 'card-body';
				with: [ html paragraph with: (self translator translationFor: #gameboxDesc) ].

			html anchor
				class: 'stretched-link';
				url: '/WCGamebox' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderGeoHashViewer: html [

	<pharoJsSkip>
	<renderKataOrder: 4>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #geohashViewer) ].
			html image
				class: 'card-img';
				url: '/assets/geohash_viewer.svg';
				altText: 'Geohash visualization tool'.

			html anchor
				class: 'stretched-link';
				url: '/WCGeohashWebApp' ]
		on: html
]

{ #category : 'cards' }
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
						with: (self translator translationFor: #geohashViewerAuto) ].
			html image
				class: 'card-img';
				url: '/assets/geohash_viewer.svg';
				altText: 'Automatic geohash coverage visualization'.

			html anchor
				class: 'stretched-link';
				url: '/WCGeohashWebApp/auto' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderKataOn: html [

	<pharoJsSkip>
	((Pragma allNamed: #renderKataOrder: in: self class) sort: [ :a :b |
		 (a argumentAt: 1) < (b argumentAt: 1) ]) do: [ :aPragma |
		aPragma method valueWithReceiver: self arguments: { html } ]
]

{ #category : 'cards' }
PageIndex class >> renderPharasteroidsOn: html [

	<pharoJsSkip>
	<renderProjectOrder: 2>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #pharasteroids) ].
			html image
				class: 'card-img';
				url: '/assets/spaceship_in_space.svg'.
			html anchor
				class: 'stretched-link';
				url: '/GBAsteroid' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderCookingBookOn: html [

	<pharoJsSkip>
	<renderProjectOrder: 3>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #cookingBook) ].
			html image
				class: 'card-img';
				url: '/archive-md/assets/images/favicon.svg';
				altText: 'Cooking book and recipes'.
			html div
				class: 'card-body';
				with: [ html paragraph with: (self translator translationFor: #cookingBookDesc) ].

			html anchor
				class: 'stretched-link';
				url: '/archive-md' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> renderProjectOn: html [

	<pharoJsSkip>
	((Pragma allNamed: #renderProjectOrder: in: self class) sort: [ :a :b |
		 (a argumentAt: 1) < (b argumentAt: 1) ]) do: [ :aPragma |
		aPragma method valueWithReceiver: self arguments: { html } ]
]

{ #category : 'cards' }
PageIndex class >> renderUBNameGeneratorOn: html [

	<pharoJsSkip>
	<renderKataOrder: 2>
	self
		cardWith: [ 
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #ubuntuNameGenerator) ].
			html image
				class: 'card-img';
				url: '/assets/ubuntu_release_generator.svg';
				altText: 'Ubuntu release name generator'.

			html anchor
				class: 'stretched-link';
				url: '/UBNameGenerator' ]
		on: html
]

{ #category : 'cards' }
PageIndex class >> renderWhereIsMyIp: html [

	<pharoJsSkip>
	<renderKataOrder: 3>
	self
		cardWith: [
			html div
				class: 'card-header';
				with: [
					html heading
						level: 3;
						with: (self translator translationFor: #whereIsMyIp) ].
			html image
				class: 'card-img';
				url: '/assets/ip_localization.svg';
				altText: 'IP localization tool'.

			html anchor
				class: 'stretched-link';
				url: '/PJSIPGeolocationWebApp' ]
		on: html
]

{ #category : 'accessing' }
PageIndex class >> staticComponentsSerialized [

	<jsLiteralGenerator>
	^ self _staticComponents asPhxJsonString
]

{ #category : 'accessing' }
PageIndex class >> title [
	<pharoJsSkip>
	^ self translator translationFor: #title
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
	root javascript defer url:
		'https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js'.
	root link
		relationship: 'icon';
		type: WCMimeType imageXIcon;
		url: '/assets/favicon.svg'
]

{ #category : 'initialize-release' }
PageIndex >> resetMasonry [

	| masonries |
	masonries := document querySelectorAll: '.row[data-masonry]'.
	^ masonries do: [ :e |
		  Masonry new: e with: {
				  (#itemSelector -> '.item').
				  (#percentPosition -> true) } ]
]

{ #category : 'initialize-release' }
PageIndex >> start [

	super start.


	(document querySelectorAll: 'img') do: [ :anImage |
		anImage complete
			ifTrue: [ self resetMasonry ]
			ifFalse: [
			anImage addEventListener: 'load' block: [ self resetMasonry ] ] ]
]

{ #category : 'cards' }
PageIndex class >> renderLoanCalculatorOn: html [

    <pharoJsSkip>
    <renderProjectOrder: 4>
    self
        cardWith: [
            html div
                class: 'card-header';
                with: [
                    html heading
                        level: 3;
                        with: (self translator translationFor: #loanCalculator) ].
            html image
                class: 'card-img';
                url: '/assets/loan_calculator.svg';
                altText: 'Loan calculator web app'.
            html div
                class: 'card-body';
                with: [ html paragraph with: (self translator translationFor: #loanCalculatorDescription) ].
            html anchor
                class: 'stretched-link';
                url: '/loan-calculator' ]
        on: html
]

{ #category : 'cards' }
PageIndex class >> renderLoanChatRTC: html [

    <pharoJsSkip>
    <renderProjectOrder: 5>
    self
        cardWith: [
            html div
                class: 'card-header';
                with: [
                    html heading
                        level: 3;
                        with: (self translator translationFor: #chatRTC)  ].
            
             html image
                class: 'card-img';
				url: '/assets/chatrtc.svg';
				altText: 'ChatRTC webapp'.

			html div
				class: 'card-body';
				with: [ html paragraph with: (self translator translationFor: #chatRTCDescription) ].
			html anchor
                class: 'stretched-link';
                url: '/ChatRTC' ]
        on: html
]