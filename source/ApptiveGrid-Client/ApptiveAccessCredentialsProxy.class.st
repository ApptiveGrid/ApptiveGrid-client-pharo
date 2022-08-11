Class {
	#name : #ApptiveAccessCredentialsProxy,
	#superclass : #ApptiveObjectProxy,
	#instVars : [
		'name',
		'grids',
		'owner',
		'role'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveAccessCredentialsProxy class >> jsonKeys [
	^ #( id name role )
]

{ #category : #'instance creation' }
ApptiveAccessCredentialsProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newAccessCredentials
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> name [

	^ name
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> name: aString [ 
	name := aString
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> owner [

	^ owner
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> owner: anApptiveUserProxy [ 
	owner := anApptiveUserProxy 
]

{ #category : #printing }
ApptiveAccessCredentialsProxy >> printOn: aStream [ 
	aStream << 'access credentials: ' << name asString
]

{ #category : #api }
ApptiveAccessCredentialsProxy >> remove [

	| r |
	self validateLinkNamed: #remove.
	r := apptiveClient newMethodInvocation
		     objectClass: ApptiveAccessCredentialsProxy;
		     method: (self linkNamed: #remove);
		     execute.
	r isSuccess ifFalse: [ 
		ApptiveUnexpectedResponse new
			response: r;
			signal ].
	owner resetAccessCredentials.
	^ self returnRemoveSuccess
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> role [

	^ role
]

{ #category : #accessing }
ApptiveAccessCredentialsProxy >> role: aRole [

	role := aRole
]
