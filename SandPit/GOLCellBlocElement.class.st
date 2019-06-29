"
A Bloc element for a cell in the Game of Life
"
Class {
	#name : #GOLCellBlocElement,
	#superclass : #BlElement,
	#instVars : [
		'cell'
	],
	#category : #'SandPit-Models'
}

{ #category : #access }
GOLCellBlocElement >> cell [
	^ cell
]

{ #category : #access }
GOLCellBlocElement >> cell: anObject [
	cell := anObject.
	self colorMe
]

{ #category : #action }
GOLCellBlocElement >> colorMe [
	^ self background: (cell ifAlive: [ Color red ] ifDead: [ Color lightGray ])
]

{ #category : #initialize }
GOLCellBlocElement >> initialize [
	super initialize.
	self geometry: BlCircle new;
		size: 16 asPoint
]
