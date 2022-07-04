Class {
	#name : #ApptiveClassResponseParser,
	#superclass : #ApptiveResponseParser,
	#category : #'ApptiveGrid-Client'
}

{ #category : #initialization }
ApptiveClassResponseParser >> buildProperties [
	object class jsonKeys do: [ :each | 
		(json includesKey: each) ifTrue: [  
			 object 
				perform: each asMutator 
				with: (json at: each) ] ]
]

{ #category : #initialization }
ApptiveClassResponseParser >> parseProperties [
	object class jsonKeys do: [ :each | 
		(json includesKey: each) ifTrue: [  
			 object 
				perform: each asMutator 
				with: (json at: each) ] ]
]

{ #category : #initialization }
ApptiveClassResponseParser >> parseProperties: aDictionary [
	object class jsonKeys do: [ :each | 
		(aDictionary includesKey: each) ifTrue: [  
			 object 
				perform: each asMutator 
				with: (aDictionary at: each) ] ]
]
