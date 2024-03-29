Class {
	#name : #ApptiveGridProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'entities',
		'fields',
		'space'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #visiting }
ApptiveGridProxy class >> acceptHeader [ 
	^ 'application/vnd.apptivegrid.hal;version=2'
]

{ #category : #accessing }
ApptiveGridProxy class >> jsonKeys [
	^ #( id name fields )
]

{ #category : #'instance creation' }
ApptiveGridProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newGrid
]

{ #category : #private }
ApptiveGridProxy >> addEntity: anObject layout: layout [
	| r |
	self updateFull.
	(self hasLinkNamed: #addEntity) ifFalse: [ 
		Error signal: 'you cannot access addEntity on the backend' ].
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveEntityProxy;
		method: (self linkNamed: #addEntity);
		query: { #layout -> layout } asDictionary;
		arguments: anObject;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnCreatedEntity: r objectClass: ApptiveEntityProxy 

]

{ #category : #adding }
ApptiveGridProxy >> addEntityWithValues: aCollectionOfValues [ 

	^ self addEntity: {#fields -> aCollectionOfValues} asDictionary layout: #indexed
	
]

{ #category : #'as yet unclassified' }
ApptiveGridProxy >> callEntitiesList: aString [
self halt.
	(links notNil and: [ links includesKey: aString ]) ifFalse: [
		self updateFull ].
	^ links 
		at: aString 
		ifPresent: [ :method | self convertEntityList: (self execute: method)   ]
		ifAbsent: [ 
			Error signal: 'you are not allowed to execute ', aString asString ]
]

{ #category : #'as yet unclassified' }
ApptiveGridProxy >> convertEntity: aCollection [ 
self halt.
	^ ApptiveEntityProxy new 
		fields: aCollection;
		yourself
]

{ #category : #'as yet unclassified' }
ApptiveGridProxy >> convertEntityList: aString [ 
	| pagingList items |
	self halt.
	items := (NeoJSONReader fromString: aString) collect: [ :each | 
			self convertEntity: each ].
	pagingList := ApptiveList new 
		apptiveClient: apptiveClient;
		objectClass: ApptiveEntityProxy;
		items: items.
	^ pagingList 
]

{ #category : #accessing }
ApptiveGridProxy >> entities [
	"^ entities ifNil: [ 
		entities := (self callEntitiesList: #entities) do: [ :each | each grid: self ] ]
	"
	^ entities ifNil: [ 
		entities := (self callPagedList: #entities objectClass: ApptiveEntityProxy) do: [ :each | each grid: self ] ]
]

{ #category : #testing }
ApptiveGridProxy >> fieldNamed: aString [ 
	^ fields 
		detect: [ :each | ((each at: 'id') = aString) or: [ (each at: 'key') = aString ] ]
		ifNone: nil
]

{ #category : #accessing }
ApptiveGridProxy >> fields [
	^ fields 
]

{ #category : #accessing }
ApptiveGridProxy >> fields: aCollection [ 
	
	fields := aCollection
]

{ #category : #testing }
ApptiveGridProxy >> includesFieldNamed: aString [ 
	^ fields anySatisfy: [ :each | ((each at: 'id') = aString) or: [ (each at: 'key') = aString ] ]
]

{ #category : #accessing }
ApptiveGridProxy >> name [
	^ name
]

{ #category : #accessing }
ApptiveGridProxy >> name: aString [ 
	name := aString
]

{ #category : #'instance creation' }
ApptiveGridProxy >> newEntity [
	^ ApptiveEntityProxy new 
		apptiveClient: apptiveClient;
		grid: self
]

{ #category : #'instance creation' }
ApptiveGridProxy >> newField [
	^ ApptiveFieldProxy new 
		apptiveClient: apptiveClient;
		grid: self;
		yourself
]

{ #category : #printing }
ApptiveGridProxy >> printOn: aStream [ 
	aStream << 'grid: ' << name asString
]

{ #category : #services }
ApptiveGridProxy >> resolveParsing [

	fields ifNotNil: [fields := fields collect: [ :each | (ApptiveFieldProxy newInstanceIn: self) initializeFrom: each ]]
]

{ #category : #accessing }
ApptiveGridProxy >> space: anApptiveSpaceProxy [ 
	space := anApptiveSpaceProxy 
]

{ #category : #adding }
ApptiveGridProxy >> updateEntityWithValues: aCollectionOfValues [ 

	^ self updateEntity: {#fields -> aCollectionOfValues} asDictionary layout: #indexed
	
]
