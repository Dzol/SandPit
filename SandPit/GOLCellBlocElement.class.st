Class {
	#name : #GOLCellBlocElement,
	#superclass : #BlElement,
	#instVars : [
		'cell'
	],
	#category : #SandPit
}

{ #category : #access }
GOLCellBlocElement >> cell [
	^ cell
]

{ #category : #access }
GOLCellBlocElement >> cell: anObject [
	cell := anObject
]

{ #category : #action }
GOLCellBlocElement >> colorMe [
	^ cell
		ifAlive: [ self background: Color red ]
		ifDead: [ self background: Color lightGray ]
]

{ #category : #initialize }
GOLCellBlocElement >> initialize [
	super initialize.
	self geometry: BlCircle new;
		size: 16 asPoint;
		background: Color red
]
