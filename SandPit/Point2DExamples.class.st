"
I collect GT examples for 2D Point
"
Class {
	#name : #Point2DExamples,
	#superclass : #Object,
	#category : #'SandPit-Examples'
}

{ #category : #example }
Point2DExamples >> distance [
	<gtExample>
	| x y |
	x := CartesianPoint new
		x: 3;
		y: 4.
	y := ManhattanPoint new
		x: 3;
		y: 4.
	self assert: (x closer2OThan: y)
]

{ #category : #example }
Point2DExamples >> pythagorean345Triple [
	<gtExample>
	| point |
	point := CartesianPoint new
		x: 3;
		y: 4.
	self assert: point distance2O equals: 5.
	^ point
]
