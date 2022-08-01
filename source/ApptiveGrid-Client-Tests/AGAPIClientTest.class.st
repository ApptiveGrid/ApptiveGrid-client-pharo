Class {
	#name : #AGAPIClientTest,
	#superclass : #AGAPIDependentTestCase,
	#instVars : [
		'httpClient'
	],
	#category : #'ApptiveGrid-Client-Tests'
}

{ #category : #testing }
AGAPIClientTest >> getEntity [

	| grid |
	grid := self getGrid.
	^ grid entities first
]

{ #category : #testing }
AGAPIClientTest >> getGrid [
	| space |
	space := self getSpace.
	^ space grids first
]

{ #category : #testing }
AGAPIClientTest >> getSpace [
	| user |
	self httpClient installUserResponse.
	user := self newClient user.
	self assert: user spaces numberOfItems equals: 1.
	^ user spaces first
]

{ #category : #private }
AGAPIClientTest >> httpClient [

	^ httpClient ifNil: [httpClient := AGAPIMockClient new]
		
]

{ #category : #accessing }
AGAPIClientTest >> key [

	^ AGUser withAccessCredentials accessCredentials anyOne accessKey.
]

{ #category : #private }
AGAPIClientTest >> newClient [


	^ ApptiveGridClient new 
		httpClient: self httpClient;
		yourself
		
]

{ #category : #accessing }
AGAPIClientTest >> secret [

	^ 'secret'.
]

{ #category : #testing }
AGAPIClientTest >> testAddEntity [

	| grid result values |
	grid := self getGrid.
	values := { 1. 'name'. 'description' }.
	result := grid addEntityWithValues:  values.
	self assert: (result fields  hasEqualElements:  values).
]

{ #category : #testing }
AGAPIClientTest >> testAddEntitySizeMismatch [

	| grid result values |
	grid := self getGrid.
	"missing one value should trigger an error."
	values := { 1. 'name'. }.
	self should: [grid addEntityWithValues:  values] raise: ApptiveUnexpectedResponse .
]

{ #category : #testing }
AGAPIClientTest >> testAddEntityTypeMismatch [

	| grid values |
	grid := self getGrid.
	"submitting a wrong type should trigger an error."
	values := { '1'. 'name'. 'description'}.
	self should: [grid addEntityWithValues:  values] raise: ApptiveUnexpectedResponse .
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntity [

	|  result entity |
	entity := self getEntity.
	result := entity updateField: entity grid fields first  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityId [

	|  result entity |
	entity := self getEntity.
	result := entity updateAtId: entity grid fields first id  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityKey [

	|  result entity |
	entity := self getEntity.
	result := entity updateAtId: entity grid fields first key  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityTypeMismatch [

	|  entity |
	entity := self getEntity.
	self should: [entity updateField: entity grid fields first  with: '32'] raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testUnauthorized [

	^ self should: [ ApptiveGridClient new 
		uri: self serverUri; key: 'any' secret: 'secret'; user] raise: ApptiveUnexpectedResponse.
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntity [

	|  result entity |
	entity := self getEntity.
	result := entity updateWithValues: { 2. 'name2'. 'description2' }.
	self assert: result fields equals: { 2. 'name2'. 'description2' }
	
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntitySizeMismatch [

	|  entity |
	entity := self getEntity.
	"update expects values for all fields to be submitted"
	self should: [entity updateWithValues: { 2. 'name2'.  }] raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntityTypeMismatch [

	| entity |
	entity := self getEntity.
	self should: [  entity updateWithValues: { '2'. 'name2'. 'description2' } ]  raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testUser [

	| user |
	user := self newClient user.
	self assert: user accessCredentials numberOfItems equals: 1.
	self assert: user accessCredentials first role equals: #admin.
	self assert: user spaces numberOfItems equals: 1.
]
