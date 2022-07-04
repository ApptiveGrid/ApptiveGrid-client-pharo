Class {
	#name : #ApptiveRemoteClient,
	#superclass : #Object,
	#instVars : [
		'secret',
		'key',
		'uri'
	],
	#classInstVars : [
		'rootUrl'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveRemoteClient class >> defaultRootUrl [
	^ 'http://localhost:7777/' 
]

{ #category : #accessing }
ApptiveRemoteClient class >> key: keyString secret: secretString [
	
	^ self new 
		key: keyString secret: secretString 
]

{ #category : #initialization }
ApptiveRemoteClient class >> reset [ 
	rootUrl := nil
]

{ #category : #accessing }
ApptiveRemoteClient class >> uri [
	^ rootUrl ifNil: [ 
		rootUrl := self defaultRootUrl ]
]

{ #category : #'as yet unclassified' }
ApptiveRemoteClient >> fullUrl: aString [ 
	^ self uri , aString 
]

{ #category : #'as yet unclassified' }
ApptiveRemoteClient >> httpClientFor: aString [ 
	^ self httpClient url: (self fullUrl: aString)
]

{ #category : #accessing }
ApptiveRemoteClient >> key: keyString secret: secretString [

	key := keyString.
	secret := secretString 
]

{ #category : #'instance creation' }
ApptiveRemoteClient >> newMethodInvocation [
	^ ApptiveRemoteMethodInvocation new
		client: self
]

{ #category : #accessing }
ApptiveRemoteClient >> uri [
	^ uri ifNil: [
		uri := self class uri ]
]

{ #category : #accessing }
ApptiveRemoteClient >> uri: anObject [

	uri := anObject
]
