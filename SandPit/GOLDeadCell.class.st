"
A Dead Cell in the Game of Life

"
Class {
	#name : #GOLDeadCell,
	#superclass : #GOLCell,
	#category : #'SandPit-Models'
}

{ #category : #update }
GOLDeadCell >> advance: neighbourCount [

	(self birth: neighbourCount) ifTrue: [ ^ GOLAliveCell new ]
]

{ #category : #rule }
GOLDeadCell >> birth: anInteger [
	^ anInteger == 3
]

{ #category : #abstract }
GOLDeadCell >> ifAlive: aliveBlock ifDead: deadBlock [
	^ deadBlock value
]
