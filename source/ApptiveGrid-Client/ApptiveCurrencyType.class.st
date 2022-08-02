Class {
	#name : #ApptiveCurrencyType,
	#superclass : #ApptiveFieldType,
	#instVars : [
		'currency'
	],
	#category : #'ApptiveGrid-Client'
}

{ #category : #'instance creation' }
ApptiveCurrencyType class >> typeName [

	^ #currency
]

{ #category : #converting }
ApptiveCurrencyType >> asJson [

	^ super asJson at: #currency put: currency; yourself
]

{ #category : #accessing }
ApptiveCurrencyType >> currency [

	^ currency
]

{ #category : #accessing }
ApptiveCurrencyType >> currency: anObject [

	currency := anObject
]

{ #category : #converting }
ApptiveCurrencyType >> fromJson: json [

	currency := json at: currency
]
