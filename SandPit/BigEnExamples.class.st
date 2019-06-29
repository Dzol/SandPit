"
GT examples for Natural #s
"
Class {
	#name : #BigEnExamples,
	#superclass : #Object,
	#category : #'SandPit-Examples'
}

{ #category : #example }
BigEnExamples >> bigEnOne [
	<gtExample>
	^ BigEnSuccessor of: (self bigEnZero)
]

{ #category : #example }
BigEnExamples >> bigEnPlusToFive [
	<gtExample>
	| x |
	x := (self bigEnPlusToThree) + (self bigEnTwo).
	self assert: x asInteger equals: 5.
	^ x
]

{ #category : #example }
BigEnExamples >> bigEnPlusToThree [
	<gtExample>
	| x |
	x := (self bigEnZero)
		+ (self bigEnOne)
		+ (self bigEnOne)
		+ (self bigEnOne).
	self assert: x asInteger equals: 3.
	^ x
]

{ #category : #example }
BigEnExamples >> bigEnTwo [
	<gtExample>
	^ BigEnSuccessor of: (self bigEnOne)
]

{ #category : #example }
BigEnExamples >> bigEnZero [
	<gtExample>
	^ BigEnZero new
]
