"
A Grid for the Game of Life
"
Class {
	#name : #GOLGrid,
	#superclass : #Object,
	#instVars : [
		'grid'
	],
	#category : #SandPit
}

{ #category : #access }
GOLGrid class >> surrounding8Deltas [
	| box |
	box := #(-1 0 1) gather: [ :x | #(-1 0 1) collect: [ :y | x@y ] ].
	^ box asOrderedCollection
		remove: 0@0;
		yourself
]

{ #category : #action }
GOLGrid >> advance [
	| neigbourCount |
	neigbourCount := self neigbourGrid.
	^ self grid: (grid indicesCollect: [ :i :j | (grid at: i at: j) advance: (neigbourCount at: i at: j) ])
]

{ #category : #enumeration }
GOLGrid >> do: aBlock [
	self grid do: aBlock
]

{ #category : #access }
GOLGrid >> grid [
	^ grid
]

{ #category : #access }
GOLGrid >> grid: anObject [
	grid := anObject

]

{ #category : #inspection }
GOLGrid >> gtGOLGridViewFor: aView [
	<gtView>
	^ aView explicit
		title: 'Blob';
		stencil: [ GOLGridBlocElement new grid: self ]
]

{ #category : #inspection }
GOLGrid >> gtGOLNeighbourHeatMapViewFor: aView [
	<gtView>
	^ aView explicit
		title: 'Neighbour Heat Map';
		stencil: [ GOLNeighbourHeatMap new grid: self ]
]

{ #category : #initialize }
GOLGrid >> initialize [

	super initialize.
	grid := Array2D new: 32.
	grid := grid collect: [ :_ | { GOLAliveCell . GOLDeadCell } atRandom new ]

]

{ #category : #access }
GOLGrid >> neigbourGrid [
	^ self grid indicesCollect: [ :i :j | self neighbours: i@j ]
]

{ #category : #access }
GOLGrid >> neighbours: aPoint [
	^ (self surrounding8Cells: aPoint)
		inject: 0 into: [ :sum :cell | sum + (cell ifAlive: [ 1 ] ifDead: [ 0 ]) ]
]

{ #category : #access }
GOLGrid >> niceIndexColumn: aNatural [
	^ ((aNatural - 1) % (self grid columnCount)) + 1
]

{ #category : #access }
GOLGrid >> niceIndexRow: aNatural [
	^ ((aNatural - 1) % (self grid rowCount)) + 1
]

{ #category : #access }
GOLGrid >> surrounding8Cells: aPoint [
	^ (self surrounding8Indices: aPoint)
		collect: [ :index | self grid at: (index x) at: (index y) ]
]

{ #category : #access }
GOLGrid >> surrounding8Indices: aPoint [
	self assert: (self class surrounding8Deltas size) equals: 8.
	^ self class surrounding8Deltas
		collect: [ :delta | (self niceIndexColumn: (aPoint x + delta x)) @ (self niceIndexRow: (aPoint y + delta y)) ]
]
