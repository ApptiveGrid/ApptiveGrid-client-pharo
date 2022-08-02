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
	self halt.
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

{ #category : #printing }
ApptiveFieldProxy >> printOn: aStream [ 
	aStream << 'field: ' << name asString
]

{ #category : #accessing }
ApptiveFieldProxy >> type [

	^ type
]

{ #category : #accessing }
ApptiveFieldProxy >> type: anObject [

	type := anObject
]
