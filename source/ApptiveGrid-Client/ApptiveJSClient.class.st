Class {
	#name : #ApptiveJSClient,
	#superclass : #ApptiveRemoteClient,
	#instVars : [
		'window'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #public }
ApptiveJSClient >> get: aString [ 
	^ window fetch: (self fullUrl: aString) options: { 
		#mode -> 'no-cors' .
		#credentials -> 'include'.
		#headers -> { 
			'Authorization' ->  'Basic'  } "asJsObject"
		} asJsObject
	
]

{ #category : #accessing }
ApptiveJSClient >> user [
	| response |
	response := self get: 'api/users/me'.
	^ ApptiveResponseParser new 
		apptiveClient: self;
		objectClass: ApptiveUserProxy;
		parse: (NeoJSONReader fromString: response);
		object 
]

{ #category : #accessing }
ApptiveJSClient >> window [

	^ window
]

{ #category : #accessing }
ApptiveJSClient >> window: anObject [

	window := anObject
]
