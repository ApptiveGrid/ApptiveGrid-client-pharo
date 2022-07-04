Class {
	#name : #BaselineOfApptiveGridClient,
	#superclass : #BaselineOf,
	#category : #BaselineOfApptiveGridClient
}

{ #category : #baselines }
BaselineOfApptiveGridClient >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		self 
			zinc: spec.
		spec 
			package: 'ApptiveGrid-Client';
			package: 'ApptiveGrid-Client-Tests' with: [ 
				spec requires: #('ApptiveGrid-Client') ].
			
		spec 
			group: 'default' with: #('ApptiveGrid-Client-Tests')  ]
]

{ #category : #baselines }
BaselineOfApptiveGridClient >> zinc: spec [
	spec baseline: 'ZincHTTPComponents' with: [ 
		spec 
			loads: #('REST' 'Zinc-HTTP-Examples');
			repository: 'github://svenvc/zinc/repository']
]
