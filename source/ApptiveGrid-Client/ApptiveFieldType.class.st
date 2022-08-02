Class {
	#name : #ApptiveFieldType,
	#superclass : #Object,
	#category : #'ApptiveGrid-Client'
}

{ #category : #'instance creation' }
ApptiveFieldType class >> named: aTypeName [

	^ (self subclasses detect: [ :each | each typeName = aTypeName ] ifNone: [
		Error signal: 'Unknown field type: ' , aTypeName
		]) new
]

{ #category : #accessing }
ApptiveFieldType class >> typeName [

	^ self subclassResponsibility 
]

{ #category : #service }
ApptiveFieldType >> asJson [

	^ { #name -> self name } asDictionary
]

{ #category : #service }
ApptiveFieldType >> fromJson: json [

	
]

{ #category : #accessing }
ApptiveFieldType >> name [

	^ self class typeName
]

{ #category : #service }
ApptiveFieldType >> valueFromJson: aJsonValue [

	^ self subclassResponsibility 
]
