Class {
	#name : #ApptiveList,
	#superclass : #ApptiveProxy,
	#instVars : [
		'numberOfPages',
		'pageIndex',
		'numberOfItems',
		'objectClass',
		'items'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #enumerating }
ApptiveList >> do: aBlock [ 
	items do: aBlock
]

{ #category : #accessing }
ApptiveList >> first [
	self flag: #todo. 
	"needs to take paging into account "
	^ items first
]

{ #category : #initialization }
ApptiveList >> initializeFrom: aCollection [
self halt.
	items := aCollection collect: [ :each |
		(objectClass readFromDictionary: each apptiveClient: apptiveClient) 
			nested: true ]
]

{ #category : #accessing }
ApptiveList >> items: aCollection [ 
	items := aCollection
]

{ #category : #accessing }
ApptiveList >> objectClass: aClass [ 
	objectClass := aClass
]
