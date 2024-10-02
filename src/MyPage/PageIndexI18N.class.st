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
		at: #whereIsMyIp put: 'Where is my IP?';
		at: #diamondSquare put: 'Diamond-square algorithm'
]

{ #category : 'class initialization' }
PageIndexI18N class >> frTranslations [

	<i18n>
	| translator |
	translator := I18NTranslator newForLanguage: 'FR'.
	I18NTranslator addTranslator: translator.
	self noTranslationRequired: translator.
	translator translationMap
		at: #title put: 'My Page';
		at: #helloMyNameIs put: 'Bonjour le monde. Je m''appelle';
		at: #intro put: 'Programmer, naviguer, apprendre, réitérer';
		at: #kataHeader put: 'Kata de code';
		at: #browserDetails put: 'Details du navigateur';
		at: #geohashViewerAuto put: 'Geohash Automatic Cover';
		at: #geohashViewer put: 'Geohash Viewer';
		at: #ubuntuNameGenerator put: 'Générateur nom de vesion Ubuntu';
		at: #whereIsMyIp put: 'Où est mon IP?';
			at: #diamondSquare put: 'Algorithme Diamant-Carré Kata'
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
