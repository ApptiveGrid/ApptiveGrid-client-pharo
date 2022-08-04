Class {
	#name : #ApptiveEntityProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'fields',
		'grid'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveEntityProxy class >> jsonKeys [ 
	^ #( id fields )
]

{ #category : #'instance creation' }
ApptiveEntityProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newEntity
]

{ #category : #accessing }
ApptiveEntityProxy >> fields [
	^ fields 
]

{ #category : #accessing }
ApptiveEntityProxy >> fields: aCollection [ 
	fields := aCollection
]

{ #category : #accessing }
ApptiveEntityProxy >> grid [

	^ grid
]

{ #category : #accessing }
ApptiveEntityProxy >> grid: anApptiveGridProxy [ 
	grid := anApptiveGridProxy 
]

{ #category : #private }
ApptiveEntityProxy >> initializeFrom: aDictionary layout: aLayout [

	^ ApptiveEntityResponseParser new 
		apptiveClient: apptiveClient;
		layout: aLayout;
		object: self;
		parse: aDictionary;
		object 
]

{ #category : #private }
ApptiveEntityProxy >> patch: anObject layout: layout [
	| r |
	self updateFull.
	(self hasLinkNamed: #partialUpdate) ifFalse: [ 
		Error signal: 'you cannot access patch on the backend' ].
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveEntityProxy;
		method: (self linkNamed: #partialUpdate);
		query: { #layout -> layout } asDictionary;
		arguments: anObject;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateOk: r layout: #keyAndField

]

{ #category : #api }
ApptiveEntityProxy >> remove [

	| r |
	(self hasLinkNamed: #remove) ifFalse: [ 
		Error signal:
			'you cannot access remove for this entity on the backend' ].
	r := apptiveClient newMethodInvocation
		     objectClass: ApptiveEntityProxy;
		     method: (self linkNamed: #remove);
		     execute.
	r isSuccess ifFalse: [ 
		ApptiveUnexpectedResponse new
			response: r;
			signal ].
	grid entities: nil.
	^ self returnRemoveSuccess
]

{ #category : #private }
ApptiveEntityProxy >> returnUpdateOk: aZnResponse layout: layout [

	^ self initializeFrom: (NeoJSONReader fromString: aZnResponse contents) layout: layout
]

{ #category : #private }
ApptiveEntityProxy >> update: anObject layout: layout [
	| r |
	self updateFull.
	(self hasLinkNamed: #update) ifFalse: [ 
		Error signal: 'you cannot access update on the backend' ].
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveEntityProxy;
		method: (self linkNamed: #update);
		query: { #layout -> layout } asDictionary;
		arguments: anObject;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateOk: r layout: layout

]

{ #category : #api }
ApptiveEntityProxy >> updateAtId: anId with: value [

	^ self patch: {anId -> value} asDictionary layout: #field
]

{ #category : #api }
ApptiveEntityProxy >> updateAtKey: aKey with: value [

	^ self patch: {aKey -> value} asDictionary layout: #key
]

{ #category : #api }
ApptiveEntityProxy >> updateField: aField with: value [

	^ self updateAtId: aField id with: value
]

{ #category : #api }
ApptiveEntityProxy >> updateWithValues: aCollectionOfValues [

	^ self update: {#fields -> aCollectionOfValues} asDictionary layout: #indexed
]
