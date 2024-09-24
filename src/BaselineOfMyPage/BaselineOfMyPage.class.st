Class {
	#name : 'BaselineOfMyPage',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfMyPage',
	#package : 'BaselineOfMyPage'
}

{ #category : 'baselines' }
BaselineOfMyPage >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'I18N'
			with: [ spec repository: 'github://astares/Pharo-I18N/src' ].
		spec
			baseline: 'Camping'
			with: [ spec repository: 'github://mattonem/WildCamping' ].

		spec package: #MyPage with: [ spec requires: #( Camping I18N ) ] ]
]
