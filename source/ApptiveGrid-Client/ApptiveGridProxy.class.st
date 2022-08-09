Class {
	#name : #ApptiveGridProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'entities',
		'fields',
		'space',
		'key'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #visiting }
ApptiveGridProxy class >> acceptHeader [ 
	^ 'application/vnd.apptivegrid.hal;version=2'
]

{ #category : #accessing }
ApptiveGridProxy class >> jsonKeys [
	^ #( id name fields key)
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
		objectClass: ApptiveGridProxy;
		method: (self linkNamed: #addEntity);
		query: { #layout -> layout } asDictionary;
		arguments: anObject;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnCreatedEntity: r objectClass: ApptiveEntityProxy 

]

{ #category : #api }
ApptiveGridProxy >> addEntityWithValues: aCollectionOfValues [ 

	^ self addEntity: {#fields -> aCollectionOfValues} asDictionary layout: #indexed
	
]

{ #category : #private }
ApptiveGridProxy >> addField: aDictionary [
	| r |
	self validateLinkNamed: #addField.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveGridProxy;
		method: (self linkNamed: #addField);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	fields := nil.
	^ self returnCreated: r objectClass: ApptiveFieldProxy 

]

{ #category : #api }
ApptiveGridProxy >> addField: fieldName type: aType [

	^ self addField: {#name -> fieldName. #type -> aType asJson}  asDictionary
	
]

{ #category : #api }
ApptiveGridProxy >> addVirtualGrid [

	^ self addVirtualGrid: { 'fields' -> (self fields collect: #id). 'filter' -> {  } asDictionary } asDictionary
]

{ #category : #api }
ApptiveGridProxy >> addVirtualGrid: aDictionary [
	| r |
	self validateLinkNamed: #addVirtualGrid.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveGridProxy;
		method: (self linkNamed: #addVirtualGrid);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	space resetGrids.
	^ self returnCreated: r objectClass: ApptiveVirtualGridProxy 

]

{ #category : #accessing }
ApptiveGridProxy >> entities [
	"^ entities ifNil: [ 
		entities := (self callEntitiesList: #entities) do: [ :each | each grid: self ] ]
	"
	^ entities ifNil: [ 
		entities := (self callPagedList: #entities objectClass: ApptiveEntityProxy) do: [ :each | each grid: self ] ]
]

{ #category : #accessing }
ApptiveGridProxy >> entities: anObject [

	entities := anObject
]

{ #category : #testing }
ApptiveGridProxy >> fieldNamed: aString [ 
	^ fields 
		detect: [ :each | ((each at: 'id') = aString) or: [ (each at: 'key') = aString ] ]
		ifNone: nil
]

{ #category : #accessing }
ApptiveGridProxy >> fields [
	^ fields ifNil: [self updateFull. fields  ]
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
ApptiveGridProxy >> key [
	^ key
]

{ #category : #accessing }
ApptiveGridProxy >> key: aString [
	key := aString
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

{ #category : #'instance creation' }
ApptiveGridProxy >> newVirtualGrid [
	^ ApptiveVirtualGridProxy new
		apptiveClient: apptiveClient;
		grid: self;
		yourself
]

{ #category : #private }
ApptiveGridProxy >> patch: aDictionary [
	| r |
	
	self validateLinkNamed: #patch.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveGridProxy;
		method: (self linkNamed: #patch);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateSuccess
]

{ #category : #printing }
ApptiveGridProxy >> printOn: aStream [ 
	aStream << 'grid: ' << name asString
]

{ #category : #api }
ApptiveGridProxy >> remove [

	| r |
	self validateLinkNamed: #remove.
	r := apptiveClient newMethodInvocation
		     objectClass: ApptiveGridProxy;
		     method: (self linkNamed: #remove);
		     execute.
	r isSuccess ifFalse: [ 
		ApptiveUnexpectedResponse new
			response: r;
			signal ].
	self space resetGrids.
	^ self returnRemoveSuccess
]

{ #category : #private }
ApptiveGridProxy >> removeField: aDictionary [

	| r |
	self validateLinkNamed: #removeField.
	r := apptiveClient newMethodInvocation
		     objectClass: ApptiveGridProxy;
		     method: (self linkNamed: #removeField);
				arguments: aDictionary;
		     execute.
	r isSuccess ifFalse: [ 
		ApptiveUnexpectedResponse new
			response: r;
			signal ].
	self fields: nil.
	^ self returnRemoveSuccess
]

{ #category : #api }
ApptiveGridProxy >> removeFieldId: anId [

	^ self removeField: { #fieldId -> anId  } asDictionary
]

{ #category : #services }
ApptiveGridProxy >> resolveParsing [

	fields ifNotNil: [fields := fields collect: [ :each | (ApptiveFieldProxy newInstanceIn: self) initializeFrom: each ]]
]

{ #category : #accessing }
ApptiveGridProxy >> space [
	^ space 
]

{ #category : #accessing }
ApptiveGridProxy >> space: anApptiveSpaceProxy [ 
	space := anApptiveSpaceProxy 
]

{ #category : #api }
ApptiveGridProxy >> updateKey: newkey [

	^ self patch: { 'key' -> newkey } asDictionary
]

{ #category : #api }
ApptiveGridProxy >> updateName: newname [

	^ self patch: { 'name' -> newname } asDictionary
]
