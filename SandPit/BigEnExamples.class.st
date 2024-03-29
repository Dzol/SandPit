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
	| x |
	x := BigEnSuccessor of: (self bigEnZero).
	self assert: x asInteger equals: 1.
	^ x
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
	| x |
	x := BigEnSuccessor of: (self bigEnOne).
	self assert: x asInteger equals: 2.
	^ x
]

{ #category : #example }
BigEnExamples >> bigEnZero [
	<gtExample>
	| x |
	x := BigEnZero new.
	self assert: x asInteger equals: 0.
	^ x
]
