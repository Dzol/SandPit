"
I test the GoL grid
"
Class {
	#name : #GOLGridTest,
	#superclass : #TestCase,
	#category : #'SandPit-Tests'
}

{ #category : #tests }
GOLGridTest >> testNiceIndex [
	self assert: (GOLGrid new surrounding8Indices: 1@1) asArray equals: { 32@32 . 32@1 . 32@2 . 1@32 . 1@2 . 2@32 . 2@1 . 2@2 }
]
