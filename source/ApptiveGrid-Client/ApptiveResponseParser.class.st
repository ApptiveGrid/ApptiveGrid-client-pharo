Class {
	#name : #ApptiveResponseParser,
	#superclass : #Object,
	#instVars : [
		'objectClass',
		'string',
		'object',
		'apptiveClient',
		'json'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveResponseParser >> apptiveClient: anApptiveGridClient [ 
	apptiveClient := anApptiveGridClient 
]

{ #category : #initialization }
ApptiveResponseParser >> buildObject [
self halt.
	object := objectClass new
		apptiveClient: apptiveClient.
	self buildProperties.
	json at: #'_links' ifPresent: [ :links |
		object links: (self readLinks: (json at: '_links')) ].
	^ object
]

{ #category : #initialization }
ApptiveResponseParser >> buildProperties [
	self subclassResponsibility 
	
]

{ #category : #accessing }
ApptiveResponseParser >> json: anObject [

	json := anObject
]

{ #category : #accessing }
ApptiveResponseParser >> object [
	^ object ifNil: [ 
		object := self buildObject ] 
]

{ #category : #accessing }
ApptiveResponseParser >> object: anObject [ 
	object := anObject 
]

{ #category : #accessing }
ApptiveResponseParser >> objectClass: aClass [ 
	object := aClass new
]

{ #category : #initialization }
ApptiveResponseParser >> parse: aDictionary [
	object apptiveClient: apptiveClient.
	self parseProperties: aDictionary.
	aDictionary at: #'_links' ifPresent: [ :links |
		object links: (self readLinks: (aDictionary at: '_links')) ].
	object resolveParsing.
	^ object
]

{ #category : #initialization }
ApptiveResponseParser >> parseProperties [
	self subclassResponsibility 
	
]

{ #category : #'as yet unclassified' }
ApptiveResponseParser >> readLinks: aDictionary [ 
	^ aDictionary collect: [ :each | 
		ApptiveRemoteMethod new 
			url: (each at: 'href');
			method: (each at: 'method') ]
]
