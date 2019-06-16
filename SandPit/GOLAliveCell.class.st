"
A Live Cell in the Game of Life

"
Class {
	#name : #GOLAliveCell,
	#superclass : #GOLCell,
	#category : #SandPit
}

{ #category : #update }
GOLAliveCell >> advance: neighbourCount [

	| death survival over under|
	
	under := neighbourCount < 2.
	over := neighbourCount > 3.
	death := under or: over.
	death ifTrue: [ ^ GOLDeadCell new ].
	
	survival := (neighbourCount == 2) or: (neighbourCount == 3).
	survival ifTrue: [ ^ self ]

]

{ #category : #abstract }
GOLAliveCell >> ifAlive: aliveBlock ifDead: deadBlock [
	^ aliveBlock value
]
