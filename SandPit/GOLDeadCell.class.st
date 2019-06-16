"
A Dead Cell in the Game of Life

"
Class {
	#name : #GOLDeadCell,
	#superclass : #GOLCell,
	#category : #SandPit
}

{ #category : #update }
GOLDeadCell >> advance: neighbourCount [

	| birth |

	birth := neighbourCount == 3.
	birth ifTrue: [ ^ GOLAliveCell new ]
]

{ #category : #abstract }
GOLDeadCell >> ifAlive: aliveBlock ifDead: deadBlock [
	^ deadBlock value
]
