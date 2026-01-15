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
		at: #description put: '⚓ A Human-First Engineer: Navigating Code and the Open Sea
I am a passionate Software Engineer and freelance developer who believes that technology should always serve the person behind the screen. With extensive experience in Web Fullstack development and a specialized background as a QA Expert, I build applications that are as reliable as they are functional.
My technical heart lies in Smalltalk—I value the elegance of pure object-oriented design and bring that same appreciation for clean, thoughtful architecture to every project. When I''m not at my desk, you''ll likely find me navigating the waters as a dedicated sailor or exploring new corners of the world. I bring the same curiosity and adaptability from my travels into my code, always prioritizing human connection and quality above all else.';
		at: #kataHeader put: 'Code Kata';
		at: #browserDetails put: 'Browser details';
		at: #geohashViewerAuto put: 'Geohash Automatic Cover';
		at: #geohashViewer put: 'Geohash Viewer';
		at: #ubuntuNameGenerator put: 'Ubuntu-like release names';
		at: #whereIsMyIp put: 'Where is my IP?';
		at: #diamondSquare put: 'Diamond-square algorithm';
		at: #projectHeader put: 'Projects';
		at: #gamebox put: 'Gamebox';
		at: #gameboxDesc put: 'An interactive html canvas framework';
		at: #cookingBook put: 'Cooking Book';
		at: #cookingBookDesc put: 'A collection of recipes and cooking notes';
		at: #loanCalculator put: 'Loan Calculator';
		at: #loanCalculatorDescription put: 'A loan calculator that helps you understand your borrowing costs. Calculate monthly payments and total interest.';
		at: #chatRTCDescription put: 'A real-time peer-to-peer chat application powered by WebRTC technology. Connect directly with others without intermediaries for fast, secure conversations.'
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
		at: #description put: '⚓ L''humain au cœur de l''ingénierie : naviguer entre code et grand large
Je suis un ingénieur logiciel passionné et développeur freelance, convaincu que la technologie doit toujours être au service de l''humain derrière l''écran. Fort d''une solide expérience en développement Web Fullstack et d''une expertise spécialisée en tant qu''expert QA, je conçois des applications aussi fiables que performantes.
Mon cœur technique bat pour Smalltalk — j''apprécie l''élégance de la conception orientée objet pure et j''insuffle cette même exigence d''une architecture propre et réfléchie dans chaque projet. Quand je ne suis pas devant mon écran, vous me trouverez probablement sur l''eau, en tant que navigateur passionné, ou en train de découvrir de nouveaux horizons à travers le monde. Je transpose la curiosité et l''adaptabilité issues de mes voyages dans mon code, en privilégiant toujours le lien humain et la qualité avant tout.';
		at: #kataHeader put: 'Kata de code';
		at: #browserDetails put: 'Details du navigateur';
		at: #geohashViewerAuto put: 'Geohash Automatic Cover';
		at: #geohashViewer put: 'Geohash Viewer';
		at: #ubuntuNameGenerator put: 'Générateur nom de vesion Ubuntu';
		at: #whereIsMyIp put: 'Où est mon IP?';
		at: #diamondSquare put: 'Algorithme Diamant-Carré Kata';
		at: #projectHeader put: 'Projets';
		at: #gamebox put: 'Gamebox';
		at: #gameboxDesc put: 'Un framework interactif pour canvas html';
		at: #cookingBook put: 'Livre de Cuisine';
		at: #cookingBookDesc put: 'Une collection de recettes et notes culinaires';
		at: #loanCalculator put: 'Calculateur de prêt';
		at: #loanCalculatorDescription put: 'Un calculateur de prêt complet pour comprendre vos coûts d''emprunt. Calculez les versements mensuels et les intérêts totaux.';
		at: #chatRTCDescription put: 'Une application de chat pair-à-pair en temps réel alimentée par la technologie WebRTC. Connectez-vous directement avec d''autres sans intermédiaire pour des conversations rapides et sécurisées.'
]

{ #category : 'class initialization' }
PageIndexI18N class >> initialize [

	(Pragma allNamed: #i18n in: self class) do: [ :aPragma |
		aPragma method valueWithReceiver: self ]
]

{ #category : 'class initialization' }
PageIndexI18N class >> noTranslationRequired: translator [

	translator translationMap
		at: #name put: 'Max Mattone';
		at: #gameOfLife put: 'Game of Life';
		at: #pharasteroids put: 'Pharasteroids';
		at: #chatRTC put: 'Chat over WebRTC'
]
