"
A Cell in the Game of Life

"
Class {
	#name : #GOLCell,
	#superclass : #Object,
	#category : #SandPit
}

{ #category : #update }
GOLCell >> advance: neighbourCount [

	self subclassResponsibility 
]

{ #category : #abstract }
GOLCell >> ifAlive: aliveBlock ifDead: deadBlock [
	^ self subclassResponsibility 
]
