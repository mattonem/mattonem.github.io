|newRepository|
Smalltalk vm maxExternalSemaphoresSilently: 1000.
newRepository := IceRepositoryCreator new
				repository: nil;
				location: '.' asFileReference ;
				createRepository .
newRepository register.

PageIndex appFolder: './build' asFileLocatorOrReference ensureCreateDirectory.
PageIndex exportApp.

PageIndex _translator: I18NTranslator forLanguage: 'FR'
PageIndex appFolder: './build/fr/' asFileLocatorOrReference ensureCreateDirectory.
PageIndex exportApp.