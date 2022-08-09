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

{ #category : #private }
ApptiveUserProxy >> addAccessCredentials: aDictionary [
	| r |
	self validateLinkNamed: #addAccessCredentials.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveUserProxy;
		method: (self linkNamed: #addAccessCredentials);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	accessCredentials  := nil.
	^ NeoJSONReader fromString: r contents

]

{ #category : #api }
ApptiveUserProxy >> addAccessCredentials: aName role: aRoleName [

	^ self addAccessCredentials: { #name -> aName. #role -> aRoleName } asDictionary
]

{ #category : #api }
ApptiveUserProxy >> addSpace [

	^ self addSpace: Dictionary new
]

{ #category : #private }
ApptiveUserProxy >> addSpace: aDictionary [
	| r |
	self validateLinkNamed: #addSpace.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveUserProxy;
		method: (self linkNamed: #addSpace);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	spaces := nil.
	^ self returnCreated: r objectClass: ApptiveSpaceProxy 

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
ApptiveUserProxy >> resetAccessCredentials [

	accessCredentials := nil
]

{ #category : #accessing }
ApptiveUserProxy >> resetSpaces [

	spaces := nil
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
