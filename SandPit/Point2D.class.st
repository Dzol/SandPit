"
I'm a 2D Point
"
Class {
	#name : #Point2D,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'SandPit-Models'
}

{ #category : #accessing }
Point2D >> closer2OThan: aPoint2D [
	^ self distance2O <= aPoint2D distance2O 
]

{ #category : #accessing }
Point2D >> distance2O [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Point2D >> x: anInteger [
	x := anInteger
]

{ #category : #accessing }
Point2D >> y: anInteger [
	y := anInteger
]
