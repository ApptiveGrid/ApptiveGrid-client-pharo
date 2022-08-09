Class {
	#name : #ApptiveSpaceProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'grids',
		'owner',
		'key',
		'user'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveSpaceProxy class >> jsonKeys [
	^ #( id name key)
]

{ #category : #'instance creation' }
ApptiveSpaceProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newSpace
]

{ #category : #api }
ApptiveSpaceProxy >> addPersistentGrid [

	^ self addPersistentGrid: {  } asDictionary
]

{ #category : #private }
ApptiveSpaceProxy >> addPersistentGrid: aDictionary [
	| r |
	self validateLinkNamed: #addGrid.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveSpaceProxy;
		method: (self linkNamed: #addGrid);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	grids := nil.
	^ self returnCreated: r objectClass: ApptiveGridProxy 

]

{ #category : #accessing }
ApptiveSpaceProxy >> gridNamed: aString [ 
	self grids 
		do: [ :grid | (grid name = aString) ifTrue: [ ^ grid ] ].
	Error signal: 'cannot find grid named ', aString asString
]

{ #category : #accessing }
ApptiveSpaceProxy >> grids [ 
	^ grids ifNil: [ 
		grids := (self callPagedList: #grids objectClass: ApptiveGridProxy) do: [ :each | each space: self ] ]
]

{ #category : #accessing }
ApptiveSpaceProxy >> key [

	^ key
]

{ #category : #accessing }
ApptiveSpaceProxy >> key: aString [

	key := aString
]

{ #category : #accessing }
ApptiveSpaceProxy >> name [

	^ name
]

{ #category : #accessing }
ApptiveSpaceProxy >> name: aString [ 
	name := aString
]

{ #category : #'instance creation' }
ApptiveSpaceProxy >> newGrid [
	^ ApptiveGridProxy new
		apptiveClient: apptiveClient;
		space: self
]

{ #category : #accessing }
ApptiveSpaceProxy >> owner [

	^ owner
]

{ #category : #accessing }
ApptiveSpaceProxy >> owner: anApptiveUserProxy [ 
	owner := anApptiveUserProxy 
]

{ #category : #private }
ApptiveSpaceProxy >> patch: aDictionary [
	| r |
	
	self validateLinkNamed: #patch.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveSpaceProxy;
		method: (self linkNamed: #patch);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateSuccess
]

{ #category : #printing }
ApptiveSpaceProxy >> printOn: aStream [ 
	aStream << 'space: ' << name asString
]

{ #category : #api }
ApptiveSpaceProxy >> remove [

	| r |
	self validateLinkNamed: #remove.
	r := apptiveClient newMethodInvocation
		     objectClass: ApptiveSpaceProxy;
		     method: (self linkNamed: #remove);
		     execute.
	r isSuccess ifFalse: [ 
		ApptiveUnexpectedResponse new
			response: r;
			signal ].
	owner resetSpaces.
	^ self returnRemoveSuccess
]

{ #category : #accessing }
ApptiveSpaceProxy >> resetGrids [

	grids := nil
]

{ #category : #api }
ApptiveSpaceProxy >> updateKey: aKey [

	self patch: { 'key' -> aKey } asDictionary
]

{ #category : #api }
ApptiveSpaceProxy >> updateName: aName [

	self patch: { 'name' -> aName } asDictionary
]

{ #category : #api }
ApptiveSpaceProxy >> virtualGrids [ 
	^ (self callPagedList: #grids objectClass: ApptiveGridProxy query: {#type ->  #virtual} asDictionary) do: [ :each | each space: self ] .
]
