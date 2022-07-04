Class {
	#name : #ApptiveGridResponseParser,
	#superclass : #ApptiveResponseParser,
	#category : #'ApptiveGrid-Client'
}

{ #category : #initialization }
ApptiveGridResponseParser >> parseProperties [
	| grid |
	grid := object grid.
]

{ #category : #parsing }
ApptiveGridResponseParser >> parseProperties: aDictionary [
	| grid fields |
	grid := object grid.
	fields := Dictionary new.
	aDictionary keysAndValuesDo: [ :key :value |
		(grid fieldNamed: key) ifNotNil: [ :field| 
			fields at: field put: value ].
		 ].
	object fields: fields
]
