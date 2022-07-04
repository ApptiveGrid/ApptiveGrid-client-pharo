Class {
	#name : #ApptiveUserProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'firstName',
		'lastName',
		'email',
		'spaces',
		'accessCredentials'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveUserProxy class >> jsonKeys [
	^ #( id firstName lastName email )
]

{ #category : #accessing }
ApptiveUserProxy >> accessCredentials [ 
	^ accessCredentials ifNil: [ 
		accessCredentials := (self callPagedList: #accessCredentials objectClass: ApptiveAccessCredentialsProxy) do: [:each | each owner: self ] ]
]

{ #category : #accessing }
ApptiveUserProxy >> email [
	^ email
]

{ #category : #accessing }
ApptiveUserProxy >> email: aString [ 
	email := aString 
]

{ #category : #accessing }
ApptiveUserProxy >> firstName: aString [ 
	firstName := aString
]

{ #category : #accessing }
ApptiveUserProxy >> lastName: aString [ 
	lastName := aString
]

{ #category : #'instance creation' }
ApptiveUserProxy >> newAccessCredentials [
	^ ApptiveAccessCredentialsProxy new 
		owner: self;
		apptiveClient: apptiveClient 
]

{ #category : #'instance creation' }
ApptiveUserProxy >> newSpace [
	^ ApptiveSpaceProxy new 
		owner: self;
		apptiveClient: apptiveClient 
]

{ #category : #'instance creation' }
ApptiveUserProxy >> readFromResponse: aZnResponse [ 
	^ ApptiveResponseParser new 
		apptiveClient: apptiveClient;
		objectClass: self;
		string: aZnResponse contents;
		object 
]

{ #category : #accessing }
ApptiveUserProxy >> spaceNamed: aString [ 
	self spaces 
		do: [ :space | (space name = aString) ifTrue: [ ^ space ] ].
	Error signal: 'cannot find space named ', aString asString
]

{ #category : #accessing }
ApptiveUserProxy >> spaces [ 
	^ spaces ifNil: [ 
		spaces := (self callPagedList: #spaces objectClass: ApptiveSpaceProxy) do: [:each | each owner: self ] ]
]
