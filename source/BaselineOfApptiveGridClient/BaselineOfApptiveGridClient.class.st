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
			neoJson: spec;
			zinc: spec.
		spec 
			package: 'ApptiveGrid-Client'with: [ 
				spec requires: #('NeoJSON') ];
			package: 'ApptiveGrid-Client-Tests' with: [ 
				spec requires: #('ApptiveGrid-Client') ].
			
		spec 
			group: 'default' with: #('ApptiveGrid-Client-Tests')  ]
]

{ #category : #accessing }
BaselineOfApptiveGridClient >> neoJson: spec [
	spec 
		baseline: 'NeoJSON' 
		with: [ 
			spec repository: 'github://svenvc/NeoJSON/repository' ]
]

{ #category : #baselines }
BaselineOfApptiveGridClient >> zinc: spec [
	spec baseline: 'ZincHTTPComponents' with: [ 
		spec 
			loads: #('REST' 'Zinc-HTTP-Examples');
			repository: 'github://svenvc/zinc/repository']
]
