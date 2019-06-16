Class {
	#name : #GOLExamples,
	#superclass : #Object,
	#category : #'SandPit-Examples'
}

{ #category : #example }
GOLExamples >> aliveCell [
	<gtExample>
	^ GOLCellBlocElement new
		cell: GOLAliveCell new;
		colorMe
]

{ #category : #example }
GOLExamples >> cell [
	<gtExample>
	^ { self aliveCell . self deadCell } atRandom
]

{ #category : #example }
GOLExamples >> deadCell [
	<gtExample>
	^ GOLCellBlocElement new
		cell: GOLDeadCell new;
		colorMe
]

{ #category : #example }
GOLExamples >> grid [
	<gtExample>
	^ GOLGridBlocElement new
]

{ #category : #example }
GOLExamples >> neigbourGrid [ 
	<gtExample>
	^ GOLNeighbourHeatMap new
]
