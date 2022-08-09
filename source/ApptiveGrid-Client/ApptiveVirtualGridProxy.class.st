Class {
	#name : #ApptiveVirtualGridProxy,
	#superclass : #ApptiveGridProxy,
	#instVars : [
		'filter',
		'sorting',
		'grid'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveVirtualGridProxy class >> jsonKeys [
	^ super jsonKeys , #( filter sorting)
]

{ #category : #accessing }
ApptiveVirtualGridProxy class >> newInstanceIn: anApptiveProxy [ 
	^ anApptiveProxy newVirtualGrid
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> filter [

	^ filter
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> filter: anObject [

	filter := anObject
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> grid [

	^ grid
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> grid: aGrid [

	grid := aGrid
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> sorting [

	^ sorting
]

{ #category : #accessing }
ApptiveVirtualGridProxy >> sorting: anObject [

	sorting := anObject
]
