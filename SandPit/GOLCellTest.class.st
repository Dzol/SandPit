"
A GOLCellTest is a test class for testing the behavior of GOLCell
"
Class {
	#name : #GOLCellTest,
	#superclass : #TestCase,
	#category : #'SandPit-Tests'
}

{ #category : #tests }
GOLCellTest >> testBirth [

	| c d |
	c := GOLDeadCell new.
	d := c advance: 3.
	self assert: (d isMemberOf: GOLAliveCell)
]

{ #category : #tests }
GOLCellTest >> testDeathFromOverPopulation [

	| c d |
	c := GOLAliveCell new.
	d := c advance: 4.
	self assert: (d isMemberOf: GOLDeadCell)
]

{ #category : #tests }
GOLCellTest >> testDeathFromUnderPopulation [

	| c d |
	c := GOLAliveCell new.
	d := c advance: 1.
	self assert: (d isMemberOf: GOLDeadCell)
]

{ #category : #tests }
GOLCellTest >> testSurvival [

	| c d |
	c := GOLAliveCell new.
	d := c advance: 2.
	self assert: (d isMemberOf: GOLAliveCell)
]
