"
GT examples for the GoL
"
Class {
	#name : #GOLExamples,
	#superclass : #Object,
	#category : #'SandPit-Examples'
}

{ #category : #example }
GOLExamples >> aliveCell [
	<gtExample>
	^ GOLCellBlocElement new
		cell: GOLAliveCell new
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
		cell: GOLDeadCell new
]

{ #category : #example }
GOLExamples >> grid [
	<gtExample>
	^ GOLGrid new
]

{ #category : #example }
GOLExamples >> neigbourGrid [ 
	<gtExample>
	^ GOLNeighbourHeatMap new grid: GOLGrid new
]
