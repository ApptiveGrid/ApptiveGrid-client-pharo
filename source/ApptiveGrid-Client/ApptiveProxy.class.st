Class {
	#name : #ApptiveProxy,
	#superclass : #Object,
	#instVars : [
		'apptiveClient'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #visiting }
ApptiveProxy class >> acceptHeader [ 
	^ nil
]

{ #category : #accessing }
ApptiveProxy >> apptiveClient: anApptiveGridClient [ 
	apptiveClient := anApptiveGridClient
]
