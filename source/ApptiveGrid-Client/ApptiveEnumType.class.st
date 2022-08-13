Class {
	#name : #ApptiveEnumType,
	#superclass : #ApptiveFieldType,
	#instVars : [
		'options'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #'instance creation' }
ApptiveEnumType class >> typeName [ 
	^ #enum
]

{ #category : #converting }
ApptiveEnumType >> asJson [

	^ super asJson at: #attributes put: options; yourself
]

{ #category : #'instance creation' }
ApptiveEnumType >> fromJson: json [

	options := json at: #options
]

{ #category : #accessing }
ApptiveEnumType >> options [

	^ options
]

{ #category : #accessing }
ApptiveEnumType >> options: anObject [

	options := anObject
]
