"
A Heat Map for neighbouring cells in the Game of Life
"
Class {
	#name : #GOLNeighbourHeatMap,
	#superclass : #BlElement,
	#instVars : [
		'grid',
		'colorSwatch'
	],
	#category : #'SandPit-Models'
}

{ #category : #action }
GOLNeighbourHeatMap >> colorMe [
	grid collectNeigbourGrid
		do: [ :count | self addChild: (self initializeSquareElement: count) ]
]

{ #category : #access }
GOLNeighbourHeatMap >> grid [
	^ grid
]

{ #category : #access }
GOLNeighbourHeatMap >> grid: aGOLGrid [
	grid := aGOLGrid.
	self colorMe
]

{ #category : #initialization }
GOLNeighbourHeatMap >> initialize [
	colorSwatch := Color red lightShades: 9.
	super initialize.
	self size: (16 * 32) asPoint;
		layout: (BlGridLayout new columnCount: 32; rowCount: 32);
		background: Color veryLightGray
]

{ #category : #initialization }
GOLNeighbourHeatMap >> initializeNumeralElement: aNatural [
	^ BlTextElement new
		text: aNatural asRopedText;
		constraintsDo: [ :c | c frame horizontal alignCenter. c frame vertical alignCenter. ]
]

{ #category : #initialization }
GOLNeighbourHeatMap >> initializeSquareElement: count [
	^ BlElement new
		background: (colorSwatch at: (count+1));
		size: 16 asPoint;
		layout: BlFrameLayout new;
		addChild: (self initializeNumeralElement: count)
]
