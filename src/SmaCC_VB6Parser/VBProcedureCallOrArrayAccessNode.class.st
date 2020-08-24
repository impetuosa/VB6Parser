Class {
	#name : #VBProcedureCallOrArrayAccessNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'receiver',
		'leftParenToken',
		'arguments',
		'rightParenToken'
	],
	#category : #'SmaCC_VB6Parser'
}

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureCallOrArrayAccess: self
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> arguments: aVBArgumentListNode [
	self arguments notNil
		ifTrue: [ self arguments parent: nil ].
	arguments := aVBArgumentListNode.
	self arguments notNil
		ifTrue: [ self arguments parent: self ]
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> nodeVariables [
	^ #(#receiver #arguments)
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> receiver [
	^ receiver
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> receiver: aVBProgramNode [
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aVBProgramNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
VBProcedureCallOrArrayAccessNode >> tokenVariables [
	^ #(#leftParenToken #rightParenToken)
]