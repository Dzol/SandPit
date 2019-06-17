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
		cell: GOLAliveCell new;
		colorMe
]

{ #category : #example }
GOLExamples >> cell [
	<gtExample>
	^ GOLCellBlocElement new
		cell: GOLCell subclasses atRandom new;
		colorMe
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
	^ GOLNeighbourHeatMap new grid: GOLGrid new
]
