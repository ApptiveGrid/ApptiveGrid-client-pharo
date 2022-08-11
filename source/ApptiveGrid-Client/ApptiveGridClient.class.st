Class {
	#name : #ApptiveGridClient,
	#superclass : #ApptiveRemoteClient,
	#instVars : [
		'httpClient'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveGridClient >> buildHttpClient [
	^ ZnClient new 
		setBasicAuthenticationUsername: key password: secret
]

{ #category : #public }
ApptiveGridClient >> get: aString [ 
	^ self httpClient 
		url: (self fullUrl: aString);
		get
]

{ #category : #accessing }
ApptiveGridClient >> httpClient [
	^ httpClient ifNil: [
		httpClient := self buildHttpClient ]
	
]

{ #category : #accessing }
ApptiveGridClient >> httpClient: aClient [
	
	httpClient := aClient
]

{ #category : #accessing }
ApptiveGridClient >> user [
	| response client |
	client := self httpClient
		followRedirects;
		url: self uri asZnUrl / #api / #users / #me.
	response := client 
		get;
		response.
	response isSuccess ifFalse: [ ApptiveUnexpectedResponse new response: response; signal ].
	^ ApptiveClassResponseParser new 
		apptiveClient: self;
		objectClass: ApptiveUserProxy;
		parse: (NeoJSONReader fromString: response contents);
		object 
]
