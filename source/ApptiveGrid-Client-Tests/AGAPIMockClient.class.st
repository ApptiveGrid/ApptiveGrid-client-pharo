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
AGAPIMockClient class >> responseForGETApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '{"fields":[{"type":{"name":"integer","typeName":"integer","componentTypes":["textfield"]},"key":"integerkey","id":"62e7df239583db3bcfa191a8","name":"id","schema":{"type":"integer"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a8/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"namekey","id":"62e7df239583db3bcfa191a9","name":"name","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191a9/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"descriptionkey","id":"62e7df239583db3bcfa191aa","name":"description","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/fields/62e7df239583db3bcfa191aa/extractToGrid","method":"post"}}}],"id":"62e7df239583db3bcfa191ab","name":"IdNameDescription","type":"persistent","key":null,"_links":{"views":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/views","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/forms","method":"get"},"virtualGrids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/virtualgrids","method":"get"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/schema","method":"get"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/Rename","method":"post"},"addSView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/sviews","method":"post"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnRemove","method":"post"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/csv","method":"get"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/updates","method":"get"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"get"},"addVirtualGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/virtualgrids","method":"post"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab","method":"patch"},"addView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/views","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnTypeChange","method":"post"},"sviews":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/sviews","method":"get"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/ColumnKeyChange","method":"post"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7df239583db3bcfa191a7/grids/62e7df239583db3bcfa191ab/forms","method":"post"}},"_embedded":{"views":[],"forms":[]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxygrids200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"id":"62e7cca27165607484a19034","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxy200 [

^ {'code'->200. 'contents'-> '{"key":null,"type":"space","id":"62e7cca27165607484a19030","name":"IdNameDescription","belongsTo":null,"_links":{"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"delete"},"addShare":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"post"},"copy":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/copy","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"patch"},"grids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"get"},"addGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids","method":"post"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/Rename","method":"post"},"uploadCSV":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/uploadCSV","method":"post"},"shares":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/shares","method":"get"}},"_embedded":{"shares":[],"grids":[{"id":"62e7cca27165607484a19034","name":"IdNameDescription","key":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"}}}]}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveSpaceProxyspaces200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":1,"numberOfItems":1,"numberOfPages":1,"items":[{"key":null,"type":"space","id":"62e7cca27165607484a19030","name":"IdNameDescription","belongsTo":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030","method":"get"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveUserProxy200 [

^ {'code'->200. 'contents'-> '{"firstName":null,"id":"e88e97f26ff3e6267537a144","lastName":null,"email":"with-access-credentials","_links":{"accessCredentials":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys","method":"get"},"spaces":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces","method":"get"},"hooks":{"href":"/api/users/e88e97f26ff3e6267537a144/hooks","method":"get"},"addHook":{"href":"/api/users/e88e97f26ff3e6267537a144/hooks","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144","method":"get"},"addSpace":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces","method":"post"}},"_embedded":{"spaces":[{"key":null,"type":"space","id":"62e7ce7b716560a4d5a19250","name":"IdNameDescription","belongsTo":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7ce7b716560a4d5a19250","method":"get"}}}],"accessCredentials":{"62e7ce7b716560a4d5a19258":{"role":"admin","name":null,"_links":{"self":{"href":"/api/users/e88e97f26ff3e6267537a144/accessKeys/62e7ce7b716560a4d5a19258","method":"get"}}}}}}'. 'Location'-> ''.} asDictionary
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

{ #category : #execution }
AGAPIMockClient >> execute [

	response := queue nextOrNil.
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
AGAPIMockClient >> installEntitiesResponse [

	self install: (self responseForMethod: #GET resource: ApptiveEntityProxy operation: #entities code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installEntityResponse [

	self install: (self responseForMethod: #GET resource: ApptiveEntityProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridResponse [

	self install: (self responseForMethod: #GET resource: ApptiveGridProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installGridsResponse [

	self install: (self responseForMethod: #GET resource: ApptiveGridProxy operation: #grids code: 200)
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
AGAPIMockClient >> installSpaceResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpacesResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy operation: #spaces code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUpdateEntityResponse [

	self install: (self responseForMethod: #PUT resource: ApptiveEntityProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installUserResponse [

	self install: (self responseForMethod: #GET resource: ApptiveUserProxy code: 200)
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
