Class {
	#name : #AGAPIClientTest,
	#superclass : #TestCase,
	#instVars : [
		'httpClient'
	],
	#category : #'ApptiveGrid-Client-Tests'
}

{ #category : #testing }
AGAPIClientTest >> getEntity [

	| grid |
	grid := self getGrid.
	self httpClient installGridResponse.
	self httpClient installEntitiesResponse .
	^ grid entities first
]

{ #category : #testing }
AGAPIClientTest >> getGrid [
	| space |

	space := self getSpace.
	self httpClient installSpaceResponse. 
	self httpClient installGridsResponse.
	^ space grids first
]

{ #category : #testing }
AGAPIClientTest >> getSpace [
	| user |
	self httpClient installUserResponse. 
	self httpClient installSpacesResponse.
	user := self newClient user.
	self assert: user spaces numberOfItems equals: 1.
	^ user spaces first
]

{ #category : #private }
AGAPIClientTest >> httpClient [

	^ httpClient ifNil: [httpClient := AGAPIMockClient new]
		
]

{ #category : #private }
AGAPIClientTest >> newClient [


	^ ApptiveGridClient new 
		httpClient: self httpClient;
		yourself
		
]

{ #category : #testing }
AGAPIClientTest >> testAddEntity [

	| grid result values |
	grid := self getGrid.
	self httpClient installGridResponse.
	self httpClient installAddEntityResponse.
	self httpClient installEntityResponse.
	values := { 1. 'name'. 'description' }.
	result := grid addEntityWithValues:  values.
	self assert: (result isKindOf: ApptiveEntityProxy).
]

{ #category : #testing }
AGAPIClientTest >> testAddEntitySizeMismatch [

	| grid values |
	grid := self getGrid.
	self httpClient installGridResponse.
	self httpClient installAddEntitySizeMismatchResponse .
	"missing one value should trigger an error."
	values := { 1. 'name'. }.
	self should: [grid addEntityWithValues:  values] raise: ApptiveUnexpectedResponse .
]

{ #category : #testing }
AGAPIClientTest >> testAddEntityTypeMismatch [

	| grid values |
	grid := self getGrid.
		self httpClient installGridResponse.
	self httpClient installAddEntityTypeMismatchResponse .
	"submitting a wrong type should trigger an error."
	values := { '1'. 'name'. 'description'}.
	self should: [grid addEntityWithValues:  values] raise: ApptiveUnexpectedResponse .
]

{ #category : #testing }
AGAPIClientTest >> testAddField [

	| grid result fields |
	grid := self getGrid.
	self httpClient installGridResponse.
	fields := grid fields.
	self httpClient installAddFieldResponse.
	self httpClient installFieldResponseName: 'newField' key: '' type: (ApptiveStringType typeName).
	result := grid addField:  'newField' type:  (ApptiveStringType new).
	self assert: (result isKindOf: ApptiveFieldProxy).
	self assert: result type name equals: ApptiveStringType typeName.
	self assert: result  name equals: 'newField'.
	self httpClient installGridResponseName: grid name key: grid key fields: (fields ,{ result}).
	self assert: (grid fields  size ) equals: 4.
]

{ #category : #testing }
AGAPIClientTest >> testAddPersistentGrid [

	| space result grids |
	space := self getSpace.
	self httpClient installSpaceResponse. 
	self httpClient installGridsResponse. 
	grids := space grids.
	self httpClient installAddGridResponse. 
	self httpClient installGridResponse. 
	result := space addPersistentGrid.
	self httpClient installGridsResponseWith: (grids items , {result}). 
	self assert: (result isKindOf: ApptiveGridProxy).
	self assert: (space grids items size ) equals: grids items size +1.
]

{ #category : #testing }
AGAPIClientTest >> testAddVirtualGrid [

	| space result grids grid |
	grid := self getGrid.
	space := grid space.
	self httpClient installGridsResponseWith: {  }.
	grids := space virtualGrids.
	self assert: grids items size equals: 0.
	self httpClient installGridResponse.
	self httpClient installAddVirtualGridResponse.  
	self httpClient installVirtualGridResponse. 
	result := grid addVirtualGrid.
	self assert: (result isKindOf: ApptiveVirtualGridProxy).
	self httpClient installGridsResponseWith: {result  }.
	self assert: (space virtualGrids items size ) equals: grids items size +1.
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntity [

	|  result entity |
	entity := self getEntity.
	self httpClient installPatchEntityResponse  .
	result := entity updateField: entity grid fields first  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityId [

	|  result entity |
	entity := self getEntity.
	self httpClient installPatchEntityResponse  .
	result := entity updateAtId: entity grid fields first id  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityKey [

	|  result entity |
	entity := self getEntity.
	self httpClient installPatchEntityResponse  .
	result := entity updateAtId: entity grid fields first key  with: 32.
	self assert: result fields first equals: 32
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchEntityTypeMismatch [

	|  entity |
	entity := self getEntity.
	self httpClient installPatchEntityTypeMismatchResponse  .
	self should: [entity updateField: entity grid fields first  with: '32'] raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testPatchGridName [

	| grid result name |
	grid := self getGrid.
	name := 'newname'.
	self httpClient installGridResponse.
	self httpClient installPatchGridResponse. 
	self httpClient installGridResponseName: name key: grid key fields: grid fields.
	result := grid updateName: name.
	self assert: grid name equals: name.
]

{ #category : #testing }
AGAPIClientTest >> testPatchGriddKey [

	| grid result key |
	grid := self getGrid.
	key := 'newkey'.
	self httpClient installGridResponse.
	self httpClient installPatchGridResponse. 
	self httpClient installGridResponseName: grid name key: key fields: grid fields.
	result := grid updateKey: key.
	self assert: grid key equals: key.
]

{ #category : #tests }
AGAPIClientTest >> testPatchSpaceKey [

	| space result name |
	space := self getSpace.
	name := 'newname'.
	self httpClient installSpaceResponse.
	self httpClient installPatchSpaceResponse.
	self httpClient installSpaceResponseName: space name key: 'newname' grids: {}.
	result := space updateKey: name.
	self assert: space key equals: name.
]

{ #category : #testing }
AGAPIClientTest >> testPatchSpaceName [

	| space result name |
	space := self getSpace.
	name := 'newname'.
	self httpClient installSpaceResponse.
	self httpClient installPatchSpaceResponse.
	self httpClient installSpaceResponseName:  name key: space key grids: {}.
	result := space updateName: name.
	self assert: space name equals: name.
]

{ #category : #testing }
AGAPIClientTest >> testRemoveEntity [

	| entity grid ids |
	entity := self getEntity.
	grid := entity grid.
	ids := (grid entities items collect: #id) asOrderedCollection remove: entity id; yourself.
	self httpClient installRemoveEntityResponse.
	self httpClient installEntitiesResponseWith:  ids.
	entity remove.
	self assert: (grid entities numberOfItems) equals: 2.
]

{ #category : #testing }
AGAPIClientTest >> testRemoveField [

	| grid field fields |
	grid := self getGrid.
	self httpClient installGridResponse. 
	field := grid fields anyOne.
	fields := grid fields allButFirst.
	self httpClient installRemoveFieldResponse.
	self httpClient installGridResponseName: grid name key: grid key fields:  fields.
	
	field remove.
	self assert: (grid fields size) equals: 2.
]

{ #category : #testing }
AGAPIClientTest >> testRemoveGrid [

	| space grid result grids |
	grid := self getGrid.

	space := grid space.
	grids := space grids.

	grid := space grids first.
	self httpClient installGridResponse.
	self httpClient installRemoveGridResponse.
	self httpClient installGridsResponseWith:
		(grids items copyWithout: grid).
	result := grid remove.
	self assert: space grids items size equals: grids items size - 1
]

{ #category : #testing }
AGAPIClientTest >> testRemoveSpace [

	|space user spaces |
	space := self getSpace.
	user := space owner.
	spaces := user spaces.
	self httpClient installSpaceResponse.
	self httpClient installRemoveSpaceResponse.  
	space remove.
	self httpClient installSpacesResponseWith: (spaces items copyWithout: space). 
	self assert: user spaces numberOfItems equals: (spaces numberOfItems - 1)
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntity [

	|  result entity |
	entity := self getEntity.
	self httpClient installEntityResponse.
	self httpClient installUpdateEntityResponse  .
	result := entity updateWithValues: { 2. 'name2'. 'description2' }.
	self assert: result fields equals: { 2. 'name2'. 'description2' }
	
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntitySizeMismatch [

	|  entity |
	entity := self getEntity.
	self httpClient installEntityResponse. 
	self httpClient installUpdateEntitySizeMismatchResponse.
	"update expects values for all fields to be submitted"
	self should: [entity updateWithValues: { 2. 'name2'.  }] raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testUpdateEntityTypeMismatch [

	| entity |
	entity := self getEntity.
	self httpClient installEntityResponse. 
	self httpClient installUpdateEntityTypeMismatchResponse.
	self should: [  entity updateWithValues: { '2'. 'name2'. 'description2' } ]  raise: ApptiveUnexpectedResponse .
	
]

{ #category : #testing }
AGAPIClientTest >> testUpdateFieldKey [

	| grid result field key |
	grid := self getGrid.
	key := 'newkey'.
	self httpClient installGridResponse.
	field := grid fields anyOne.
	self httpClient installPatchFieldResponse.
	self httpClient installFieldResponseName: field name key:  key type: field type name. 
	result := field updateKey: key.
	self assert: field key equals: key.
]

{ #category : #testing }
AGAPIClientTest >> testUpdateFieldName [

	| grid result field name |
	grid := self getGrid.
	name := 'newname'.
	self httpClient installGridResponse.
	field := grid fields anyOne.
	self httpClient installPatchFieldResponse.
	self httpClient installFieldResponseName:  name key:  field key type: field type name. 
	result := field updateName: name.
	self assert: field name equals: name.
]

{ #category : #testing }
AGAPIClientTest >> testUpdateFieldType [

	| grid result field |
	grid := self getGrid.
	self httpClient installGridResponse.
	field := grid fields anyOne.
	
	self assert: (field type isKindOf: ApptiveIntegerType).
	self httpClient installPatchFieldResponse.
	self httpClient installFieldResponseName: field name key:  field key type: ApptiveStringType typeName. 
	result := field updateType: (ApptiveStringType new).
	self assert: (field type isKindOf: ApptiveStringType).
]

{ #category : #testing }
AGAPIClientTest >> testUser [

	| user |
	self httpClient installUserResponse. 
	self httpClient installAccessCredentialsResponse.
	self httpClient installSpacesResponse.
	user := self newClient user.
	self assert: user accessCredentials numberOfItems equals: 1.
	self assert: user accessCredentials first role equals: #admin.
	self assert: user spaces numberOfItems equals: 1.
]
