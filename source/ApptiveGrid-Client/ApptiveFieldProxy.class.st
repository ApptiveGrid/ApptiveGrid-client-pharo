Class {
	#name : #ApptiveFieldProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'key',
		'grid',
		'type'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveFieldProxy class >> jsonKeys [
	^ #( id name key type )
]

{ #category : #accessing }
ApptiveFieldProxy class >> newInstanceIn: anApptiveProxy [ 
	
	^ anApptiveProxy newField
]

{ #category : #accessing }
ApptiveFieldProxy >> grid [

	^ grid
]

{ #category : #accessing }
ApptiveFieldProxy >> grid: anObject [

	grid := anObject
]

{ #category : #accessing }
ApptiveFieldProxy >> key [

	^ key
]

{ #category : #accessing }
ApptiveFieldProxy >> key: anObject [

	key := anObject
]

{ #category : #accessing }
ApptiveFieldProxy >> name [

	^ name
]

{ #category : #accessing }
ApptiveFieldProxy >> name: anObject [

	name := anObject
]

{ #category : #private }
ApptiveFieldProxy >> patch: aDictionary [
	| r |
	(self hasLinkNamed: #patch) ifFalse: [ 
		Error signal: 'you cannot access patch for this field on the backend' ].
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveFieldProxy;
		method: (self linkNamed: #patch);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateSuccess
]

{ #category : #printing }
ApptiveFieldProxy >> printOn: aStream [ 
	aStream << 'field: ' << name asString
]

{ #category : #accessing }
ApptiveFieldProxy >> type [

	^ type
]

{ #category : #accessing }
ApptiveFieldProxy >> type: aDictionary [

	type := (ApptiveFieldType fromJson: aDictionary) 
]

{ #category : #accessing }
ApptiveFieldProxy >> typeDictionary: aDictionary [

	self type: (ApptiveFieldType named: (aDictionary at: #name)) 
]

{ #category : #api }
ApptiveFieldProxy >> updateKey: aKey [

	self patch: { 'key' -> aKey } asDictionary
]

{ #category : #api }
ApptiveFieldProxy >> updateName: newname [

	self patch: { 'name' -> newname } asDictionary
]

{ #category : #api }
ApptiveFieldProxy >> updateType: aType [

	self patch: { 'type' -> aType asJson } asDictionary
]
