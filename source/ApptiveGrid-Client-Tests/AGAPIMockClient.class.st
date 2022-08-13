Class {
	#name : #AGAPIMockClient,
	#superclass : #ZnClient,
	#instVars : [
		'queue'
	],
	#category : #'ApptiveGrid-Client-Tests'
}

{ #category : #mocks }
AGAPIMockClient class >> responseForDELETEApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '"deleted"'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForDELETEApptiveFieldProxy200 [

^ {'code'->200. 'contents'-> '{}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForDELETEApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '[]'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForDELETEApptiveSpaceProxy200 [

^ {'code'->200. 'contents'-> '[]'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveAccessCredentialsProxy200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"role":"admin","name":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys/62e7c9e27165607484a1900e","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveAccessCredentialsProxyaccessCredentials200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"role":"admin","name":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys/62e7da4d9583db7986a1905b","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62e7df239583db3bcfa191ac","62e7df239583db3bcfa191a8":1,"62e7df239583db3bcfa191a9":"Name1","62e7df239583db3bcfa191aa":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/EditLink","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveEntityProxyentities200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":3,"numberOfItems":3,"numberOfPages":1,"items":[{"_id":"62e7df239583db3bcfa191ac","62e7df239583db3bcfa191a8":1,"62e7df239583db3bcfa191a9":"Name1","62e7df239583db3bcfa191aa":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/EditLink","method":"post"}}},{"_id":"62e7df239583db3bcfa191ad","62e7df239583db3bcfa191a8":2,"62e7df239583db3bcfa191a9":"Name2","62e7df239583db3bcfa191aa":"Description2","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ad/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ad","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ad","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ad","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ad/EditLink","method":"post"}}},{"_id":"62e7df239583db3bcfa191ae","62e7df239583db3bcfa191a8":3,"62e7df239583db3bcfa191a9":"Name3","62e7df239583db3bcfa191aa":"Description3","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ae/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ae","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ae","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ae","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ae/EditLink","method":"post"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveEntityProxyentities: entityIds [


	| json entities |
	json := NeoJSONReader fromString: (self responseForGETApptiveEntityProxyentities200 at: #contents).
	entities := (json at: #items) select: [ :each | entityIds includes: (each at: '_id')  ].

^ {'code'->200. 'contents'-> ('{"page":1,"size":2,"numberOfItems":2,"numberOfPages":1,"items":' , (NeoJSONWriter toString: entities) ,'
}'). 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveFieldProxy200Name: fieldName key: fieldKey type: typeName [

^ {'code'->200. 'contents'-> ('{"type":{"name": "', typeName ,'"

,"typeName":"', typeName,'"
,"componentTypes":["textfield"]},"key":"', fieldKey,'"
,"id":"62e9411954e0638dc4a1a574","name":"', fieldName,'"
,"schema":{"type":"integer"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e9411954e0638dc4a1a573/grids/62e9411954e0638dc4a1a577/fields/62e9411954e0638dc4a1a574","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e9411954e0638dc4a1a573/grids/62e9411954e0638dc4a1a577/fields/62e9411954e0638dc4a1a574/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e9411954e0638dc4a1a573/grids/62e9411954e0638dc4a1a577/fields/62e9411954e0638dc4a1a574","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e9411954e0638dc4a1a573/grids/62e9411954e0638dc4a1a577/fields/62e9411954e0638dc4a1a574/extractToGrid","method":"post"}}}'). 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '{"fields":[{"type":{"name":"integer","typeName":"integer","componentTypes":["textfield"]},"key":"integerkey","id":"62e7df239583db3bcfa191a8","name":"id","schema":{"type":"integer"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"namekey","id":"62e7df239583db3bcfa191a9","name":"name","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"descriptionkey","id":"62e7df239583db3bcfa191aa","name":"description","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa/extractToGrid","method":"post"}}}],"id":"62e7df239583db3bcfa191ab","name":"IdNameDescription","type":"persistent","key":null,"_links":{"views":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/views","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/forms","method":"get"},"virtualGrids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/virtualgrids","method":"get"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/schema","method":"get"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/Rename","method":"post"},"addSView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/sviews","method":"post"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnRemove","method":"post"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/csv","method":"get"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/updates","method":"get"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"get"},"addVirtualGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/virtualgrids","method":"post"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"patch"},"addView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/views","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnTypeChange","method":"post"},"sviews":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/sviews","method":"get"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnKeyChange","method":"post"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/forms","method":"post"}},"_embedded":{"views":[],"forms":[]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxy200Name: aName key: aKey fields: aCollectionOfFields [

| json fields |
	json := NeoJSONReader fromString: (self responseForGETApptiveGridProxy200 at: #contents).
	
	fields := aCollectionOfFields collect: [ :each | { 'id' -> each id. 'name' -> each name. 'key' -> each key. 'type' -> each type asJson  } asDictionary ].
^ {'code'->200. 'contents'-> ('{"fields":', (NeoJSONWriter toString: fields),',"id":"62ed3fa883dea81620a1e28b","name":"', aName,'","type":"persistent","key":"', aKey asString,'"
,"_links":{"views":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/views","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/forms","method":"get"},"virtualGrids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/virtualgrids","method":"get"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/csv","method":"get"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/schema","method":"get"},"addSView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/sviews","method":"post"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/ColumnRemove","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/Rename","method":"post"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/query","method":"get"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/updates","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b","method":"get"},"addVirtualGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/virtualgrids","method":"post"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b","method":"patch"},"addView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/views","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/ColumnTypeChange","method":"post"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/ColumnKeyChange","method":"post"},"sviews":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/sviews","method":"get"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62ed3fa883dea81620a1e287/grids/62ed3fa883dea81620a1e28b/forms","method":"post"}},"_embedded":{"views":[],"forms":[]}}'). 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxygrids200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"id":"62e7cca27165607484a19034","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxygrids: aCollectionOfGrids [

	| grids |
	grids := String streamContents: [ :stream | 
		         stream nextPutAll: '['.
		         aCollectionOfGrids
			         do: [ :eachGrid | 
				         stream nextPutAll: '{"id":"' , eachGrid id
					         ,
					         '","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}' ]
			         separatedBy: [ stream nextPutAll: ', ' ].
		         stream nextPutAll: ']' ].

	^ { 
		  ('code' -> 200).
		  ('contents'
		   ->
		   ('{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":'
		   , grids , '}')).
		  ('Location' -> '') } asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxyvirtualgrids200empty [

^ {'code'->200. 'contents'-> '{"page":1,"size":0,"numberOfItems":0,"numberOfPages":1,"items":[]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxy200 [

^ {'code'->200. 'contents'-> '{"key":null,"type":"space","id":"62e7cca27165607484a19030","name":"IdNameDescription","belongsTo":null,"_links":{"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"delete"},"addShare":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"post"},"copy":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/copy","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"patch"},"grids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"get"},"addGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/Rename","method":"post"},"uploadCSV":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/uploadCSV","method":"post"},"shares":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"get"}},"_embedded":{"shares":[],"grids":[{"id":"62e7cca27165607484a19034","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxy200Name: aName key: aKey grids: grids [

^ {'code'->200. 'contents'->( '{"key":"', aKey asString,'"
,"type":"space","id":"62e7cca27165607484a19030","name":"', aName asString,'","belongsTo":null,"_links":{"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"delete"},"addShare":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"post"},"copy":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/copy","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"patch"},"grids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"get"},"addGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/Rename","method":"post"},"uploadCSV":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/uploadCSV","method":"post"},"shares":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"get"}},"_embedded":{"shares":[],"grids":[{"id":"62e7cca27165607484a19034","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}]}}'). 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxyspaces200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"key":null,"type":"space","id":"62e7cca27165607484a19030","name":"IdNameDescription","belongsTo":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxyspaces: someSpaces [

	| spaces |
	spaces := String streamContents: [ :stream | 
		          stream nextPutAll: '['.
		          someSpaces
			          do: [ :eachSpace | 
				          stream nextPutAll:
					          '{"key":null,"type":"space","id":"' , eachSpace id
					          ,
					          '","name":"IdNameDescription","belongsTo":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"}}}' ]
			          separatedBy: [ stream nextPutAll: ', ' ].
		          stream nextPutAll: ']' ].
	^ { 
		  ('code' -> 200).
		  ('contents'
		   ->
		   ('{"page":1,"size":1,"numberOfItems":', someSpaces size asString,',"numberOfPages":1,"items":'
		   , spaces , '}')).
		  ('Location' -> '') } asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveUserProxy200 [

^ {'code'->200. 'contents'-> '{"firstName":null,"id":"e88e97f26ff3e6267537a144","lastName":null,"email":"with-access-credentials","_links":{"accessCredentials":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys","method":"get"},"spaces":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces","method":"get"},"hooks":{"href":"/api/users/e88e97f26ff3e6267537a144/hooks","method":"get"},"addHook":{"href":"/api/users/e88e97f26ff3e6267537a144/hooks","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144","method":"get"},"addSpace":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces","method":"post"}},"_embedded":{"spaces":[{"key":null,"type":"space","id":"62e7ce7b716560a4d5a19250","name":"IdNameDescription","belongsTo":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7ce7b716560a4d5a19250","method":"get"}}}],"accessCredentials":{"62e7ce7b716560a4d5a19258":{"role":"admin","name":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys/62e7ce7b716560a4d5a19258","method":"get"}}}}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveVirtualGridProxy200 [

^ {'code'->200. 'contents'-> '{"hiddenFields":[],"fields":[{"type":{"name":"integer","typeName":"integer","componentTypes":["textfield"]},"key":"integerkey","id":"62f25c449c5f3722b2a230f3","name":"id","schema":{"type":"integer"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f3","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f3/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f3","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f3/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"namekey","id":"62f25c449c5f3722b2a230f4","name":"name","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f4","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f4/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f4","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f4/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"descriptionkey","id":"62f25c449c5f3722b2a230f5","name":"description","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f5","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f5/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f5","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c449c5f3722b2a230f6/fields/62f25c449c5f3722b2a230f5/extractToGrid","method":"post"}}}],"filter":{},"sorting":[],"id":"62f25c529c5f37ae5ca2311b","name":null,"type":"virtual","key":null,"_links":{"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/forms","method":"get"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/csv","method":"get"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/schema","method":"get"},"addSView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/sviews","method":"post"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/ColumnRemove","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/Rename","method":"post"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/query","method":"get"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/updates","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b","method":"put"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b","method":"patch"},"updateFilter":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/FilterChange","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/ColumnTypeChange","method":"post"},"sviews":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/sviews","method":"get"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/ColumnKeyChange","method":"post"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62f25c449c5f3722b2a230f2/grids/62f25c529c5f37ae5ca2311b/forms","method":"post"}},"_embedded":{"forms":[]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPATCHApptiveFieldProxy200 [

^ {'code'->200. 'contents'-> '{}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPATCHApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '{}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPATCHApptiveSpaceProxy200 [

^ {'code'->200. 'contents'-> '{}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyentities201 [

^ {'code'->201. 'contents'-> 'Created /api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/entities/62e7ccf071656077c3a19059
'. 'Location'-> '/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/entities/62e7ccf071656077c3a19059'.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyentities400 [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''AGWrongTypeError: Value 1 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyentities400SizeMismatch [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''JSONTypeError: Mismatch between number of submitted value and number of fields''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyentities400TypeMismatch [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''AGWrongTypeError: Value 1 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyupdate200 [

^ {'code'->200. 'contents'-> '{"_id":"62e7df239583db3bcfa191ac","integerkey":32,"namekey":"Name1","descriptionkey":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities/62e7df239583db3bcfa191ac/EditLink","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyupdate400 [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout keyAndField: ''AGWrongTypeError: Value 32 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyupdate400TypeMismatch [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout keyAndField: ''AGWrongTypeError: Value 32 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveGridField201 [

^ {'code'->201. 'contents'-> 'Created /api/users/e88e97f26ff3e6267537a144/spaces/62f21b7451c761429ea22cd5/grids/62f21b7451c761429ea22cd9/fields/62f21b7551c761ec03a22cfe
'. 'Location'-> '/api/users/e88e97f26ff3e6267537a144/spaces/62f21b7451c761429ea22cd5/grids/62f21b7451c761429ea22cd9/fields/62f21b7551c761ec03a22cfe'.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveGridProxyvirtualgrids201 [

^ {'code'->201. 'contents'-> 'Created /api/users/e88e97f26ff3e6267537a144/spaces/62f25a1d9c5f37c8e2a2305a/grids/62f25a1d9c5f37b80ea23083
'. 'Location'-> '/api/users/e88e97f26ff3e6267537a144/spaces/62f25a1d9c5f37c8e2a2305a/grids/62f25a1d9c5f37b80ea23083'.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveSpaceProxygrids201 [

^ {'code'->201. 'contents'-> 'Created /api/users/e88e97f26ff3e6267537a144/spaces/62f259079c5f377a21a2302c/grids/62f259079c5f37d6c6a23055
'. 'Location'-> '/api/users/e88e97f26ff3e6267537a144/spaces/62f259079c5f377a21a2302c/grids/62f259079c5f37d6c6a23055'.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62e7c9e27165607484a18f8c","fields":[2,"name2","description2"],"_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18f87/grids/62e7c9e27165607484a18f8b/entities/62e7c9e27165607484a18f8c/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18f87/grids/62e7c9e27165607484a18f8b/entities/62e7c9e27165607484a18f8c","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18f87/grids/62e7c9e27165607484a18f8b/entities/62e7c9e27165607484a18f8c","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18f87/grids/62e7c9e27165607484a18f8b/entities/62e7c9e27165607484a18f8c","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18f87/grids/62e7c9e27165607484a18f8b/entities/62e7c9e27165607484a18f8c/EditLink","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy400 [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''AGWrongTypeError: Value 2 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy400SizeMismatch [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''JSONTypeError: Mismatch between number of submitted value and number of fields''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy400TypeMismatch [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''AGWrongTypeError: Value 2 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #execution }
AGAPIMockClient >> execute [

	| path |
	response := queue nextOrNil.
	response ifNil: [  
		path := String streamContents: [ :stream |
			(self request url segments last: 2) do: [ :each |
				
				stream nextPutAll: each ] separatedBy: [ stream nextPutAll: '/' ]
			 ].
		Error signal: ('Missing mock response for ' ,  self request method , ' on ', path)].
	^ response
]

{ #category : #execution }
AGAPIMockClient >> initialize [

	super initialize.
	queue := WaitfreeQueue new.
]

{ #category : #private }
AGAPIMockClient >> install: aZnResponse [

	queue nextPut: aZnResponse
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAccessCredentialsResponse [

	self install: (self responseForMethod: #GET resource: ApptiveAccessCredentialsProxy operation: #accessCredentials code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddEntityResponse [

	self install: (self responseForMethod: #POST resource: ApptiveEntityProxy operation: #entities code: 201)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddEntitySizeMismatchResponse [

	self install: (self responseForMethod: #POST resource: ApptiveEntityProxy operation: #entities code: 400)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddEntityTypeMismatchResponse [

	self install: (self responseForMock: #responseForPOSTApptiveEntityProxyentities400TypeMismatch)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddFieldResponse [

	self install: (self responseFromDictionary: (self class responseForPOSTApptiveGridField201))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddGridResponse [

	self install: (self responseForMock: #responseForPOSTApptiveSpaceProxygrids201)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installAddVirtualGridResponse [

	self install: (self responseForMock: #responseForPOSTApptiveGridProxyvirtualgrids201)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installEntitiesResponse [

	self install: (self responseForMethod: #GET resource: ApptiveEntityProxy operation: #entities code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installEntitiesResponseWith: ids [

	self install: (self responseFromDictionary: (self class responseForGETApptiveEntityProxyentities: ids))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installEntityResponse [

	self install: (self responseForMethod: #GET resource: ApptiveEntityProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installFieldResponseName: fieldName key: fieldKey type: typeName [

	self install: (self  responseFromDictionary: (self class responseForGETApptiveFieldProxy200Name: fieldName key: fieldKey type: typeName))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridResponse [

	self install: (self responseForMethod: #GET resource: ApptiveGridProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridResponseName: aName key: aKey fields: fields [

	self install: (self  responseFromDictionary: (self class responseForGETApptiveGridProxy200Name: aName key: aKey fields: fields))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridsResponse [

	self install: (self responseForMethod: #GET resource: ApptiveGridProxy operation: #grids code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridsResponseWith: grids [

	self install: (self responseFromDictionary: (self class responseForGETApptiveGridProxygrids: grids))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installPatchEntityResponse [

	self install: (self responseForMethod: #POST resource: ApptiveEntityProxy operation: #update code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installPatchEntityTypeMismatchResponse [

	self install: (self responseForMock: #responseForPOSTApptiveEntityProxyupdate400TypeMismatch)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installPatchFieldResponse [

	self install: (self responseForMock: #responseForPATCHApptiveFieldProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installPatchGridResponse [

	self install: (self responseForMock: #responseForPATCHApptiveGridProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installPatchSpaceResponse [

	self install: (self responseForMock: #responseForPATCHApptiveSpaceProxy200 )
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installRemoveEntityResponse [

	self install: (self responseForMock: #responseForDELETEApptiveEntityProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installRemoveFieldResponse [

	self install: (self responseForMock: #responseForDELETEApptiveFieldProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installRemoveGridResponse [

	self install: (self responseForMock: #responseForDELETEApptiveGridProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installRemoveSpaceResponse [

	self install: (self responseForMock: #responseForDELETEApptiveSpaceProxy200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpaceResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpaceResponseName: aName key: aKey grids: grids [

	self install: (self  responseFromDictionary: (self class responseForGETApptiveSpaceProxy200Name: aName key: aKey grids: grids))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpacesResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy operation: #spaces code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpacesResponseWith: spaces [

	self install: (self responseFromDictionary: (self class responseForGETApptiveSpaceProxyspaces: spaces))
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUpdateEntityResponse [

	self install: (self responseForMethod: #PUT resource: ApptiveEntityProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUpdateEntitySizeMismatchResponse [

	self install: (self responseForMock: #responseForPUTApptiveEntityProxy400SizeMismatch)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUpdateEntityTypeMismatchResponse [

	self install: (self responseForMock: #responseForPUTApptiveEntityProxy400TypeMismatch)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUserResponse [

	self install: (self responseForMethod: #GET resource: ApptiveUserProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installVirtualGridResponse [

	self install: (self responseForMock: #responseForGETApptiveVirtualGridProxy200)
]

{ #category : #private }
AGAPIMockClient >> responseForMethod: httpMethod resource: resourceClass code: returnCode [

	^ self responseForMethod: httpMethod resource: resourceClass operation: '' code: returnCode
]

{ #category : #private }
AGAPIMockClient >> responseForMethod: httpMethod resource: resourceClass operation: operationPath code: returnCode [

	^ self responseForMock: ( ('responseFor',  httpMethod, resourceClass name , operationPath ,  returnCode asString) asSymbol) . 
]

{ #category : #private }
AGAPIMockClient >> responseForMock: mockSelector [

	^ self responseFromDictionary: (self class perform: mockSelector) . 
]

{ #category : #private }
AGAPIMockClient >> responseFromDictionary: aDictionary [

	response := ZnResponse statusLine: (ZnStatusLine code: (aDictionary at: #code)).
	response entity: (ZnStringEntity json: (aDictionary at: #contents)).
	response headers at: 'Location' put: (aDictionary at: #Location ).
	^ response
	
]
