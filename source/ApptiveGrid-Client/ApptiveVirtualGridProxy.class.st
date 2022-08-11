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

{ #category : #private }
ApptiveVirtualGridProxy >> update: aDictionary [
	| r |
	
	self validateLinkNamed: #update.
	r := apptiveClient newMethodInvocation
		objectClass: ApptiveVirtualGridProxy;
		method: (self linkNamed: #update);
		arguments: aDictionary;
		execute.
	r isSuccess ifFalse: [ ApptiveUnexpectedResponse  new response: r; signal. ].
	^ self returnUpdateSuccess
]

{ #category : #api }
ApptiveVirtualGridProxy >> updateName: aName filter: aFilter fields: fieldIds [ 


	^ self updateName: aName filter: aFilter fields: fieldIds sorting: nil
]

{ #category : #api }
ApptiveVirtualGridProxy >> updateName: aName filter: aFilter fields: fieldIds sorting: aSorting [


	^ self update: { #name -> aName. #filter -> aFilter. #fields -> fieldIds. #sorting -> (aSorting ifNil: [ sorting ]  )} asDictionary
]
