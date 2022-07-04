Class {
	#name : #ApptiveSpaceProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'grids',
		'owner'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveSpaceProxy class >> jsonKeys [
	^ #( id name )
]

{ #category : #'instance creation' }
ApptiveSpaceProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newSpace
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

{ #category : #printing }
ApptiveSpaceProxy >> printOn: aStream [ 
	aStream << 'space: ' << name asString
]
