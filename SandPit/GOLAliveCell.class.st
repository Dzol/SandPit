"
A Live Cell in the Game of Life

"
Class {
	#name : #GOLAliveCell,
	#superclass : #GOLCell,
	#category : #'SandPit-Models'
}

{ #category : #update }
GOLAliveCell >> advance: neighbourCount [

	(self going2Die: neighbourCount) ifTrue: [ ^ GOLDeadCell new ]
	

]

{ #category : #abstract }
GOLAliveCell >> going2Die: anInteger [
	^ (self underPop: anInteger) or: (self overPop: anInteger)
]

{ #category : #abstract }
GOLAliveCell >> ifAlive: aliveBlock ifDead: deadBlock [
	^ aliveBlock value
]

{ #category : #abstract }
GOLAliveCell >> overPop: anInteger [
	^ anInteger > 3
]

{ #category : #abstract }
GOLAliveCell >> underPop: anInteger [
	^ anInteger < 2
]
