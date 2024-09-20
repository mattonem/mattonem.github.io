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
			baseline: 'Camping'
			with: [ spec repository: 'github://mattonem/WildCamping' ].

		spec package: #MyPage with: [ spec requires: #( Camping ) ] ]
]
