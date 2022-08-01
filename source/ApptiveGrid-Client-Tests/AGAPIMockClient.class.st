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
AGAPIMockClient class >> responseForGETApptiveEntityProxy200 [

^ {'code'->200. 'contents'-> '{"_id":"62e7c9e27165607484a18fe1","62e7c9e27165607484a18fdd":1,"62e7c9e27165607484a18fde":"Name1","62e7c9e27165607484a18fdf":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1/EditLink","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveEntityProxyentities200 [

^ {'code'->200. 'contents'-> '{"page":1,"size":3,"numberOfItems":3,"numberOfPages":1,"items":[{"_id":"62e7c9e27165607484a18fe1","62e7c9e27165607484a18fdd":1,"62e7c9e27165607484a18fde":"Name1","62e7c9e27165607484a18fdf":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe1/EditLink","method":"post"}}},{"_id":"62e7c9e27165607484a18fe2","62e7c9e27165607484a18fdd":2,"62e7c9e27165607484a18fde":"Name2","62e7c9e27165607484a18fdf":"Description2","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe2/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe2","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe2","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe2","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe2/EditLink","method":"post"}}},{"_id":"62e7c9e27165607484a18fe3","62e7c9e27165607484a18fdd":3,"62e7c9e27165607484a18fde":"Name3","62e7c9e27165607484a18fdf":"Description3","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe3/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe3","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe3","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe3","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e27165607484a18fdc/grids/62e7c9e27165607484a18fe0/entities/62e7c9e27165607484a18fe3/EditLink","method":"post"}}}]}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForGETApptiveGridProxy200 [

^ {'code'->200. 'contents'-> '{"fields":[{"type":{"name":"integer","typeName":"integer","componentTypes":["textfield"]},"key":"integerkey","id":"62e7cca27165607484a19031","name":"id","schema":{"type":"integer"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19031","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19031/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19031","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19031/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"namekey","id":"62e7cca27165607484a19032","name":"name","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19032","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19032/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19032","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19032/extractToGrid","method":"post"}}},{"type":{"name":"string","typeName":"string","componentTypes":["textfield"]},"key":"descriptionkey","id":"62e7cca27165607484a19033","name":"description","schema":{"type":"string"},"_links":{"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19033","method":"patch"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19033/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19033","method":"get"},"extractToGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/fields/62e7cca27165607484a19033/extractToGrid","method":"post"}}}],"id":"62e7cca27165607484a19034","name":"IdNameDescription","type":"persistent","key":null,"_links":{"views":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/views","method":"get"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"delete"},"updateFieldName":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/ColumnRename","method":"post"},"forms":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/forms","method":"get"},"virtualGrids":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/virtualgrids","method":"get"},"schema":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/schema","method":"get"},"rename":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/Rename","method":"post"},"addSView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/sviews","method":"post"},"removeField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/ColumnRemove","method":"post"},"exportAsCsv":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/csv","method":"get"},"updates":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/updates","method":"get"},"query":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/query","method":"get"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"get"},"addVirtualGrid":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/virtualgrids","method":"post"},"entities":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/entities","method":"get"},"addEntity":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/entities","method":"post"},"addField":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/ColumnAdd","method":"post"},"patch":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034","method":"patch"},"addView":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/views","method":"post"},"addLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/AddLink","method":"post"},"updateFieldType":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/ColumnTypeChange","method":"post"},"sviews":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/sviews","method":"get"},"updateFieldKey":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/ColumnKeyChange","method":"post"},"addForm":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7cca27165607484a19030/grids/62e7cca27165607484a19034/forms","method":"post"}},"_embedded":{"views":[],"forms":[]}}'. 'Location'-> ''.} asDictionary
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
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyupdate200 [

^ {'code'->200. 'contents'-> '{"_id":"62e7c9e17165607484a18f17","integerkey":32,"namekey":"Name1","descriptionkey":"Description1","_links":{"partialUpdate":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e17165607484a18f12/grids/62e7c9e17165607484a18f16/entities/62e7c9e17165607484a18f17/update","method":"post"},"self":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e17165607484a18f12/grids/62e7c9e17165607484a18f16/entities/62e7c9e17165607484a18f17","method":"get"},"update":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e17165607484a18f12/grids/62e7c9e17165607484a18f16/entities/62e7c9e17165607484a18f17","method":"put"},"remove":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e17165607484a18f12/grids/62e7c9e17165607484a18f16/entities/62e7c9e17165607484a18f17","method":"delete"},"addEditionLink":{"href":"/api/users/e88e97f26ff3e6267537a144/spaces/62e7c9e17165607484a18f12/grids/62e7c9e17165607484a18f16/entities/62e7c9e17165607484a18f17/EditLink","method":"post"}}}'. 'Location'-> ''.} asDictionary
]

{ #category : #mocks }
AGAPIMockClient class >> responseForPOSTApptiveEntityProxyupdate400 [

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

	^ queue nextOrNil
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
AGAPIMockClient >> installSpaceResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy code: 200)
]

{ #category : #'installing mocks' }
AGAPIMockClient >> installSpacesResponse [

	self install: (self responseForMethod: #GET resource: ApptiveSpaceProxy operation: #spaces code: 200)
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

	^ self responseFromDictionary: (self class perform: ('responseFor',  httpMethod, resourceClass name , operationPath ,  returnCode asString) asSymbol) . 
]

{ #category : #private }
AGAPIMockClient >> responseFromDictionary: aDictionary [

	response := ZnResponse statusLine: (ZnStatusLine code: (aDictionary at: #code)).
	response entity: (ZnStringEntity json: (aDictionary at: #contents)).
	response headers at: 'Location' put: (aDictionary at: #Location ).
	^ response
	
]
