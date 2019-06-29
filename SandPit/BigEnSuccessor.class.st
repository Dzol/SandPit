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

{ #category : #converting }
BigEnSuccessor >> asInteger [
	^ 1 + predecessor asInteger
]

{ #category : #operation }
BigEnSuccessor >> plus: aBigEn [
	predecessor := (predecessor plus: aBigEn)
]

{ #category : #accessing }
BigEnSuccessor >> predecessor: aBigEn [
	predecessor := aBigEn
]
