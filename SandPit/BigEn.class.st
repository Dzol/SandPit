"
I'm a Natural #
"
Class {
	#name : #BigEn,
	#superclass : #Object,
	#category : #'SandPit-Models'
}

{ #category : #arithmetic }
BigEn >> + aBigEn [
	^ self plus: aBigEn
]

{ #category : #converting }
BigEn >> asInteger [
	^ self subclassResponsibility 
]

{ #category : #inspection }
BigEn >> gtDisplayOn: aStream [
	^ aStream nextPutAll: self asInteger asString
]

{ #category : #inspection }
BigEn >> gtIntegerFor: aView [
	<gtView>
	^ self asInteger gtIntegerFor: aView
]

{ #category : #operation }
BigEn >> plus: aBigEn [
	^ self subclassResponsibility 
]
