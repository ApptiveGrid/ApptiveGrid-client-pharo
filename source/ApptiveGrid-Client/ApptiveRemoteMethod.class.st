Class {
	#name : #ApptiveRemoteMethod,
	#superclass : #Object,
	#instVars : [
		'url',
		'method'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #'as yet unclassified' }
ApptiveRemoteMethod >> executeIn: anApptiveGridClient [
	^ anApptiveGridClient 
		perform: method asSymbol asMutator 
		with: url
]

{ #category : #accessing }
ApptiveRemoteMethod >> method [
	^ method 
]

{ #category : #accessing }
ApptiveRemoteMethod >> method: aString [ 
	method := aString
]

{ #category : #'as yet unclassified' }
ApptiveRemoteMethod >> prepareHttpClient: anApptiveGridClient [ 
	^ (anApptiveGridClient httpClientFor: url)
		method: method asUppercase  
]

{ #category : #accessing }
ApptiveRemoteMethod >> url: aString [ 
	url := aString
]
