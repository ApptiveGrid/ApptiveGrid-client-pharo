Class {
	#name : #ApptiveEntityResponseParser,
	#superclass : #ApptiveClassResponseParser,
	#instVars : [
		'layout'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #accessing }
ApptiveEntityResponseParser >> layout [

	^ layout
]

{ #category : #accessing }
ApptiveEntityResponseParser >> layout: aString [

	layout := aString
]

{ #category : #initialization }
ApptiveEntityResponseParser >> parseFieldProperties: aDictionary [

	| fields |
	object id: (aDictionary at: '_id').
	fields := OrderedCollection new.
	object grid fields do: [ :eachField |
		
		fields add: (aDictionary at: (eachField id))
		 ].
	object fields: fields.
]

{ #category : #initialization }
ApptiveEntityResponseParser >> parseIndexedProperties: aDictionary [
	object class jsonKeys do: [ :each | 
		(aDictionary includesKey: each) ifTrue: [  
			 object 
				perform: each asMutator 
				with: (aDictionary at: each) ] ]
]

{ #category : #initialization }
ApptiveEntityResponseParser >> parseKeyAndFieldProperties: aDictionary [

	| fields |
	object id: (aDictionary at: '_id').
	fields := OrderedCollection new.
	object grid fields do: [ :eachField |
		
		fields add: (aDictionary at: (eachField key) ifAbsent: [aDictionary at: eachField id])
		 ].
	object fields: fields.
]

{ #category : #initialization }
ApptiveEntityResponseParser >> parseProperties: aDictionary [
	
	layout = #indexed ifTrue: [ ^ self parseIndexedProperties: aDictionary ].
	layout = #field ifTrue: [ ^ self parseFieldProperties: aDictionary ].
	layout = #keyAndField ifTrue: [ ^ self parseKeyAndFieldProperties: aDictionary ].
	Error signal: 'Unexpected layout: ' , layout printString
]
