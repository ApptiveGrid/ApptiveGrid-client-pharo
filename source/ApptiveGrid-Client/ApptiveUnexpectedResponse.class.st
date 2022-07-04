Class {
	#name : #ApptiveUnexpectedResponse,
	#superclass : #Error,
	#instVars : [
		'response'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveUnexpectedResponse >> messageText [ 
	^ 'Unexpect API response: ' , response printString
]

{ #category : #accessing }
ApptiveUnexpectedResponse >> response [

	^ response
]

{ #category : #accessing }
ApptiveUnexpectedResponse >> response: aResponse [

	response := aResponse
]
