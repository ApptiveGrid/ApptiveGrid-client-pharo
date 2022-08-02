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

{ #category : #accessing }
ApptiveEnumType >> options [

	^ options
]

{ #category : #accessing }
ApptiveEnumType >> options: anObject [

	options := anObject
]
