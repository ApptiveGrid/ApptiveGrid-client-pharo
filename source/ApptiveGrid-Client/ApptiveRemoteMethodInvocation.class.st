Class {
	#name : #ApptiveRemoteMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'client',
		'objectClass',
		'method',
		'arguments',
		'query'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> arguments: aCollection [ 
	arguments := aCollection 
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> client: anObject [

	client := anObject
]

{ #category : #execution }
ApptiveRemoteMethodInvocation >> execute [

	| response httpClient |
	objectClass acceptHeader ifNotNil: [ :accept | 
		client httpClient accept:
			(ZnMimeType fromString: objectClass acceptHeader) ].
	httpClient := method prepareHttpClient: client.
	(arguments notNil and: [ arguments notEmpty ]) ifTrue: [ 
		httpClient entity:
			(ZnStringEntity json: (NeoJSONWriter toString: arguments)) ].
	self query keysAndValuesDo: [ :optionKey :optionValue |
		httpClient queryAt: optionKey add: optionValue.
		 ].
	response := httpClient
		            execute;
		            response.
	^ response
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> method [

	^ method 
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> method: anObject [

	method := anObject
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> objectClass [

	^ objectClass 
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> objectClass: anObject [

	objectClass := anObject
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> query [
	^ query ifNil: [ Dictionary new ]
]

{ #category : #accessing }
ApptiveRemoteMethodInvocation >> query: aDictionary [ 
	query := aDictionary 
]
