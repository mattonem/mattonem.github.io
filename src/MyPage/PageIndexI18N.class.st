Class {
	#name : 'PageIndexI18N',
	#superclass : 'Object',
	#category : 'MyPage-Core',
	#package : 'MyPage',
	#tag : 'Core'
}

{ #category : 'class initialization' }
PageIndexI18N class >> enTranslations [

	<i18n>
	| translator |
	translator := I18NTranslator newForLanguage: 'EN'.
	I18NTranslator addTranslator: translator.
	self noTranslationRequired: translator.
	translator translationMap
		at: #title put: 'My Page';
		at: #helloMyNameIs put: 'Hello world. My name is';
		at: #intro put: 'Program, Sail, Learn, Repeat';
		at: #kataHeader put: 'Code Kata';
		at: #browserDetails put: 'Browser details';
		at: #geohashViewerAuto put: 'Geohash Automatic Cover';
		at: #geohashViewer put: 'Geohash Viewer';
		at: #ubuntuNameGenerator put: 'Ubuntu-like release names';
		at: #whereIsMyIp put: 'Where is my IP?'
]

{ #category : 'class initialization' }
PageIndexI18N class >> initialize [

	(Pragma allNamed: #i18n in: self class) do: [ :aPragma |
		aPragma method valueWithReceiver: self ]
]

{ #category : 'class initialization' }
PageIndexI18N class >> noTranslationRequired: translator [

	translator translationMap at: #name put: 'Max Mattone'
]
