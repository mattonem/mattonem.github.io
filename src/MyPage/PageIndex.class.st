Class {
	#name : 'PageIndex',
	#superclass : 'PjFileBasedWebApp',
	#traits : 'StaticComponentHolder',
	#classTraits : 'StaticComponentHolder classTrait',
	#category : 'MyPage-Core',
	#package : 'MyPage',
	#tag : 'Core'
}

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
			html paragraph with: 'Hello world, my name is'.
			html heading
				level: 1;
				with: 'Max Mattone'.
			html paragraph with: 'Program, Sail, Learn, Repeat' ].
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
								with: 'Code kata' ].
					html div
						class: 'card-body';
						with: [
							html unorderedList
								class: 'list-group';
								with: [
									self
										listItemUrl: 'BrowserDetails'
										with: 'Show browser details'
										on: html.
									self
										listItemUrl: 'UBNameGenerator'
										with: 'Generator of ubuntu-like release names'
										on: html.
									self
										listItemUrl: 'PJSIPGeolocationWebApp'
										with: 'Where is my IP?'
										on: html.
									self
										listItemUrl: 'WCGeohashWebApp'
										with: 'Geohash Viewer'
										on: html.
									self
										listItemUrl: 'WCGeohashWebApp/auto'
										with: 'Geohash Automatic Cover'
										on: html ] ] ] ]
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
PageIndex class >> staticComponentsSerialized [

	<jsLiteralGenerator>
	^ self _staticComponents asPhxJsonString
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
		'https://unpkg.com/leaflet@1.9.4/dist/leaflet.js'
]
