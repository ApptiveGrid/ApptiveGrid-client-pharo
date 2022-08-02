Class {
	#name : #ApptiveFieldType,
	#superclass : #Object,
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveFieldType class >> typeName [

	^ self subclassResponsibility 
]

{ #category : #service }
ApptiveFieldType >> valueFromJson: aJsonValue [

	^ self subclassResponsibility 
]
