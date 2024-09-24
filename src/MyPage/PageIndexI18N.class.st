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
	translator translationMap at: #helloMyNameIs put: 'Hello world. My name is'.
	translator translationMap at: #intro put: 'Program, Sail, Learn, Repeat'.
	translator translationMap at: #kataHeader put: 'Code Kata'	.
	
	
]

{ #category : 'class initialization' }
PageIndexI18N class >> initialize [ 
	(Pragma allNamed: #i18n in: self class) do: [ :aPragma | aPragma method valueWithReceiver: self ]
]

{ #category : 'class initialization' }
PageIndexI18N class >> noTranslationRequired: translator [

	translator translationMap at: #name put: 'Max Mattone'
]
