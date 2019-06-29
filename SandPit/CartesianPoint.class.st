"
I'm a Cartesian Point
"
Class {
	#name : #CartesianPoint,
	#superclass : #Point2D,
	#category : #'SandPit-Models'
}

{ #category : #accessing }
CartesianPoint >> distance2O [
	^ ((x squared) + (y squared)) sqrt floor 
]
