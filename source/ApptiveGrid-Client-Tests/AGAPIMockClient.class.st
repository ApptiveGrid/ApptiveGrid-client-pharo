Class {
	#name : #AGAPIMockClient,
	#superclass : #ZnClient,
	#instVars : [
		'queue'
	],
	#category : #'ApptiveGrid-Client-Tests'
}

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveAccessCredentialsProxy200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"role":"admin","name":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys/62b9a6c5ce3ecc18399ecd9a","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62bab20a5e92ba1f9e9edf55","62bab20a5e92ba1f9e9edf51":1,"62bab20a5e92ba1f9e9edf52":"Name1","62bab20a5e92ba1f9e9edf53":"Description1","_links":{"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55/EditLink","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"delete"},"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55/update","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '{"fields":[{"type":{"name":"integer","typeName":"integer","componentTypes":["textfield"]},"schema":{"type":"integer"},"key":"integerkey","id":"62bab20a5e92ba1f9e9edf51","name":"id","_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf51","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf51/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf51","method":"get"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"schema":{"type":"string"},"key":"namekey","id":"62bab20a5e92ba1f9e9edf52","name":"name","_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf52","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf52/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf52","method":"get"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"schema":{"type":"string"},"key":"descriptionkey","id":"62bab20a5e92ba1f9e9edf53","name":"description","_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf53","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf53/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/fields/62bab20a5e92ba1f9e9edf53","method":"get"}}}],"id":"62bab20a5e92ba1f9e9edf54","name":"IdNameDescription","type":"persistent","key":null,"_links":{"views":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/views","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/forms","method":"get"},"virtualGrids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/virtualgrids","method":"get"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/csv","method":"get"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/Rename","method":"post"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/schema","method":"get"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/ColumnRemove","method":"post"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/updates","method":"get"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54","method":"get"},"addVirtualGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/virtualgrids","method":"post"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54","method":"patch"},"addView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/views","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/ColumnTypeChange","method":"post"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/ColumnKeyChange","method":"post"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/forms","method":"post"}},"_embedded":{"forms":[]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxy200 [

^ {'code'->200. 'contents'-> '{"type":"space","key":null,"belongsTo":null,"id":"62bab20a5e92ba1f9e9edf4f","name":"IdNameDescription","_links":{"addShare":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/shares","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/Rename","method":"post"},"copy":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/copy","method":"post"},"shares":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/shares","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f","method":"get"},"grids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f","method":"delete"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f","method":"patch"},"addGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids","method":"post"}},"_embedded":{"shares":[],"grids":[{"id":"62bab20a5e92ba1f9e9edf54","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54","method":"get"}}}]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62bab20a5e92ba1f9e9edf55","integerkey":32,"namekey":"Name1","descriptionkey":"Description1","_links":{"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55/EditLink","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55","method":"delete"},"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62bab20a5e92ba1f9e9edf4f/grids/62bab20a5e92ba1f9e9edf54/entities/62bab20a5e92ba1f9e9edf55/update","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxy201 [

^ {'code'->201. 'contents'-> 'Created /api/users/e88e97f26ff3e6267537a144/spaces/62b9ac60ce3eccd8009ecfbf/grids/62b9ac60ce3eccd8009ecfc4/entities/62b9ac61ce3eccb1a29ecfe9
'. 'Location'-> '/api/users/e88e97f26ff3e6267537a144/spaces/62b9ac60ce3eccd8009ecfbf/grids/62b9ac60ce3eccd8009ecfc4/entities/62b9ac61ce3eccb1a29ecfe9'.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxy400 [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout keyAndField: ''AGWrongTypeError: Value 32 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62b9bfe0ba6cb81b1c9ed093","fields":[2,"name2","description2"],"_links":{"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62b9bfe0ba6cb81b1c9ed08d/grids/62b9bfe0ba6cb81b1c9ed092/entities/62b9bfe0ba6cb81b1c9ed093/EditLink","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62b9bfe0ba6cb81b1c9ed08d/grids/62b9bfe0ba6cb81b1c9ed092/entities/62b9bfe0ba6cb81b1c9ed093","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62b9bfe0ba6cb81b1c9ed08d/grids/62b9bfe0ba6cb81b1c9ed092/entities/62b9bfe0ba6cb81b1c9ed093","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62b9bfe0ba6cb81b1c9ed08d/grids/62b9bfe0ba6cb81b1c9ed092/entities/62b9bfe0ba6cb81b1c9ed093","method":"delete"},"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62b9bfe0ba6cb81b1c9ed08d/grids/62b9bfe0ba6cb81b1c9ed092/entities/62b9bfe0ba6cb81b1c9ed093/update","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPUTApptiveEntityProxy400 [

^ {'code'->400. 'contents'-> '{
	"error" : "parse error",
	"description" : "Reading entity values failure. Occured while resolving for layout indexed: ''AGWrongTypeError: Value 2 must be of type integer''"
}'. 'Location'-> ''.} asDictionary
]

{ #category : #execution }
AGAPIMockClient >> execute [

	^ queue nextOrNil
]

{ #category : #execution }
AGAPIMockClient >> initialize [

	super initialize.
	queue := WaitfreeQueue new.
]

{ #category : #execution }
AGAPIMockClient >> install: aZnResponse [

	queue nextPut: aZnResponse
]

{ #category : #execution }
AGAPIMockClient >> installUserResponse [

	self install: (self responseForMethod: #GET resource: #User code: 200)
]

{ #category : #execution }
AGAPIMockClient >> responseForMethod: httpMethod resource: resourceName code: returnCode [

	^ self responseFromDictionary:( self class perform: 'responseFor',  httpMethod, 'Apptive',  resourceName , 'Proxy' ,  returnCode asString ) 
]

{ #category : #execution }
AGAPIMockClient >> responseFromDictionary: aDictionary [

	response := ZnResponse statusLine: (ZnStatusLine code: (aDictionary at: #code)).
	response entity: (ZnStringEntity json: (aDictionary at: #contents)).
	response headers at: 'Location' put: (aDictionary at: #Location ).
	^ response
	
]
