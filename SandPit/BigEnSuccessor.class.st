"
I am just a sort of +1 #
"
Class {
	#name : #BigEnSuccessor,
	#superclass : #BigEn,
	#instVars : [
		'predecessor'
	],
	#category : #'SandPit-Models'
}

{ #category : #'instance creation' }
BigEnSuccessor class >> of: aBigEn [
	^ self new initializeWithPredecessor: aBigEn
]

{ #category : #converting }
BigEnSuccessor >> asInteger [
	^ 1 + predecessor asInteger
]

{ #category : #initialization }
BigEnSuccessor >> initializeWithPredecessor: aBigEn [
	predecessor := aBigEn
]

{ #category : #operation }
BigEnSuccessor >> plus: aBigEn [
	predecessor := (predecessor plus: aBigEn)
]

{ #category : #accessing }
BigEnSuccessor >> predecessor: aBigEn [
	predecessor := aBigEn
]
