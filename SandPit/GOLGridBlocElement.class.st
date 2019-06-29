"
A Bloc element for the grid in a Game of Life
"
Class {
	#name : #GOLGridBlocElement,
	#superclass : #BlElement,
	#instVars : [
		'grid'
	],
	#category : #'SandPit-Models'
}

{ #category : #action }
GOLGridBlocElement >> advance [
	self removeChildren.
	self grid: (self grid advance do: [ :cell | self addChild: (GOLCellBlocElement new cell: cell) colorMe ]).
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
		do: [ :cell | self addChild: (GOLCellBlocElement new cell: cell) colorMe ]
]

{ #category : #initialization }
GOLGridBlocElement >> initialize [
	super initialize.
	self size: (16 * 32) asPoint;
		layout: (BlGridLayout new columnCount: 32);
		background: Color white.
	self grid: GOLGrid new.
	self grid
		do: [ :cell | self addChild: (GOLCellBlocElement new cell: cell) colorMe ].
	self addEventHandlerOn: BlMouseDownEvent do: [ :event | self advance ]
]
