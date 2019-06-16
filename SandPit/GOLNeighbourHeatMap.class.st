Class {
	#name : #GOLNeighbourHeatMap,
	#superclass : #BlElement,
	#instVars : [
		'grid'
	],
	#category : #SandPit
}

{ #category : #initialization }
GOLNeighbourHeatMap >> initialize [
	| colorSwatch |
	colorSwatch := Color red lightShades: 9.
	super initialize.
	self size: (16 * 32) asPoint;
		layout: (BlGridLayout new columnCount: 32);
		background: Color veryLightGray.
	grid := GOLGrid new.
	grid neigbourGrid
		do: [ :count | self addChild: (BlTextElement new background: (colorSwatch at: (count+1)); size: 16 asPoint; text: count asRopedText) ]
]
