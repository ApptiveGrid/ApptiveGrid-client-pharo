Class {
	#name : #ApptivePagedList,
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
ApptivePagedList >> do: aBlock [
	items do: aBlock 
]

{ #category : #accessing }
ApptivePagedList >> first [
	self flag: #todo. 
	"needs to take paging into account "
	^ items first
]

{ #category : #initialization }
ApptivePagedList >> initializeFrom: aDictionary [ 
	numberOfItems := aDictionary at: 'numberOfItems'.
	numberOfPages := aDictionary at: 'numberOfPages'.
	pageIndex := aDictionary at: 'page'.
	items := (aDictionary at: 'items') collect: [ :each |
		(objectClass readFromDictionary: each apptiveClient: apptiveClient) 
			nested: true ]
]

{ #category : #initialization }
ApptivePagedList >> initializeFrom: aDictionary using: aBlock [
	numberOfItems := aDictionary at: 'numberOfItems'.
	numberOfPages := aDictionary at: 'numberOfPages'.
	pageIndex := aDictionary at: 'page'.
	items := (aDictionary at: 'items') collect: [ :each |
		(aBlock value: each) 
			nested: true ]
]

{ #category : #accessing }
ApptivePagedList >> items [

	^ items 
]

{ #category : #accessing }
ApptivePagedList >> numberOfItems [

	^ numberOfItems 
]

{ #category : #accessing }
ApptivePagedList >> objectClass: aClass [ 
	objectClass := aClass
]
