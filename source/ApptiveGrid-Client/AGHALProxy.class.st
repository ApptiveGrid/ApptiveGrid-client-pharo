Class {
	#name : #AGHALProxy,
	#superclass : #ApptiveProxy,
	#instVars : [
		'links',
		'nested'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #calling }
AGHALProxy >> call: aString [ 
	^ links 
		at: aString 
		ifPresent: [ :method | self execute: method ]
		ifAbsent: [ Error signal: 'you are not allowed to execute ', aString asString ]
]

{ #category : #calling }
AGHALProxy >> callList: aString objectClass: aClass [
	(links notNil and: [ links includesKey: aString ]) ifFalse: [
		self updateFull ].
	^ links 
		at: aString 
		ifPresent: [ :method | self convertList: (self execute: method) objectClass: aClass ]
		ifAbsent: [ 
			Error signal: 'you are not allowed to execute ', aString asString ]
]

{ #category : #calling }
AGHALProxy >> callPagedList: aString objectClass: aClass [
	(links notNil and: [ links includesKey: aString ]) ifFalse: [
		self updateFull ].
	^ links 
		at: aString 
		ifPresent: [ :method | 
			self 
				convertPagedList: (ApptiveRemoteMethodInvocation new
					client: apptiveClient;
					objectClass: aClass;
					method: method) execute contents
				objectClass: aClass ]
		ifAbsent: [ 
			Error signal: 'you are not allowed to execute ', aString asString ]
]

{ #category : #execution }
AGHALProxy >> execute: anApptiveRemoteMethod [ 
	| response |
	response := anApptiveRemoteMethod executeIn: apptiveClient.
	^ response 
]

{ #category : #testing }
AGHALProxy >> hasLinkNamed: aString [ 
	^ links includesKey: aString
]

{ #category : #initialization }
AGHALProxy >> initialize [ 
	super initialize.
	nested := false
]

{ #category : #initialization }
AGHALProxy >> initializeFrom: aDictionary [ 
	ApptiveClassResponseParser new 
		apptiveClient: apptiveClient;
		object: self;
		parse: aDictionary;
		object 
]

{ #category : #accessing }
AGHALProxy >> linkNamed: aString [ 
	^ links at: aString
]

{ #category : #accessing }
AGHALProxy >> links: aCollection [ 
	links := aCollection 
]

{ #category : #accessing }
AGHALProxy >> nested: aBoolean [ 
	nested := aBoolean
]

{ #category : #private }
AGHALProxy >> returnCreated: aZnResponse objectClass: class [

	| link method |
	link := aZnResponse headers at: 'Location'.
	method := ApptiveRemoteMethod new 
			url: (link);
			method: 'get';
			yourself.
	^ (class newInstanceIn: self) initializeFrom: (NeoJSONReader fromString: (method executeIn: apptiveClient) contents)
]

{ #category : #private }
AGHALProxy >> returnCreatedEntity: aZnResponse objectClass: class [

	| link method |
	link := aZnResponse headers at: 'Location'.
	method := ApptiveRemoteMethod new 
			url: (link);
			method: 'get';
			yourself.
	^ (class newInstanceIn: self) initializeFrom: (NeoJSONReader fromString: (method executeIn: apptiveClient) contents) layout: #field
]

{ #category : #private }
AGHALProxy >> returnOk: aZnResponse objectClass: class [


	^ ApptiveClassResponseParser new 
		apptiveClient: apptiveClient;
		object: class new ;
		parse: (NeoJSONReader fromString: aZnResponse contents);
		object 
]

{ #category : #private }
AGHALProxy >> returnRemoveSuccess [

	"if object was successfully removed, the container should be updated"
]

{ #category : #private }
AGHALProxy >> returnUpdateSuccess [

	"if object was successfully updated, we need to synchronize it with backend"
	self updateFull
]
