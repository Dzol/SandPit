"
A Bloc element for the grid in a Game of Life
"
Class {
	#name : #GOLGridBlocElement,
	#superclass : #BlElement,
	#instVars : [
		'grid'
	],
	#category : #SandPit
}

{ #category : #action }
GOLGridBlocElement >> advance [
	self grid advance
]

{ #category : #access }
GOLGridBlocElement >> grid [
	^ grid
]

{ #category : #access }
GOLGridBlocElement >> grid: anObject [
	grid := anObject.
	self removeChildren.
	self grid
		do: [ :cell | self addChild: (GOLCellBlocElement new cell: cell) colorMe ].
	self assert: self childrenCount equals: (32*32)
]

{ #category : #initialization }
GOLGridBlocElement >> initialize [
	super initialize.
	self size: (16 * 32) asPoint;
		layout: (BlGridLayout new columnCount: 32);
		background: Color white.
	self grid: GOLGrid new.
	self grid
		do: [ :cell | self addChild: (GOLCellBlocElement new cell: cell) colorMe ]
]
