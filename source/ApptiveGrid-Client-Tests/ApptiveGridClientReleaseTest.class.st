Class {
	#name : #ApptiveGridClientReleaseTest,
	#superclass : #TestCase,
	#category : #'ApptiveGrid-Client-Tests'
}

{ #category : #tests }
ApptiveGridClientReleaseTest >> testNoUnusedTemporaryVariablesLeft [
	"Fail if there are methods who have unused temporary variables"
	| found  |
	found := ApptiveGridClientReleaseTest package methods select: [ :m |
		"before creating the AST (slow), check if there are temps" 
		((m numTemps - m numArgs) > 0) and: [  
		m ast temporaries anySatisfy: [ :x | x binding isUsed not] ] ].
							
	self 
		assert: found isEmpty 
		description: ('the following methods have unused temporary variables and should be cleaned: ', found asString)
]
