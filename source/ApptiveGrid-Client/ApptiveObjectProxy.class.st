Class {
	#name : #ApptiveObjectProxy,
	#superclass : #AGHALProxy,
	#instVars : [
		'id'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #'instance creation' }
ApptiveObjectProxy class >> readFromDictionary: aDictionary apptiveClient: anApptiveClient [ 
	^ ApptiveResponseParser new 
		apptiveClient: anApptiveClient;
		objectClass: self;
		parse: aDictionary;
		object 
]

{ #category : #'instance creation' }
ApptiveObjectProxy class >> readFromString: aString apptiveClient: anApptiveClient [ 
	^ self 
		readFromDictionary: (NeoJSONReader fromString: aString)
		apptiveClient: anApptiveClient 
]

{ #category : #'as yet unclassified' }
ApptiveObjectProxy >> convertList: aString objectClass: aClass [
	| pagingList |
	self halt.
	pagingList := ApptiveList new 
		apptiveClient: apptiveClient;
		objectClass: aClass;
		initializeFrom: (NeoJSONReader fromString: aString).
	^ pagingList 
]

{ #category : #'as yet unclassified' }
ApptiveObjectProxy >> convertPagedList: aString objectClass: aClass [
	| pagingList |
	pagingList := ApptivePagedList new 
		apptiveClient: apptiveClient;
		objectClass: aClass;
		initializeFrom: (NeoJSONReader fromString: aString) using: [:v | 
			(aClass newInstanceIn: self) initializeFrom: v ].
	^ pagingList 
]

{ #category : #accessing }
ApptiveObjectProxy >> id [
	^ id 
]

{ #category : #accessing }
ApptiveObjectProxy >> id: aString [ 
	id := aString
]

{ #category : #services }
ApptiveObjectProxy >> resolveParsing [

	"hook so that properties can be resolved to proper objects after genering parsing.
	overwrite if needed"
]

{ #category : #'as yet unclassified' }
ApptiveObjectProxy >> updateFull [
	| response |
	response := (ApptiveRemoteMethodInvocation new 
		client: apptiveClient;
		objectClass: self class;
		method: (links at: 'self')) execute.
	ApptiveClassResponseParser new 
		apptiveClient: apptiveClient;
		object: self;
		parse: (NeoJSONReader fromString: response contents);
		object 
]
