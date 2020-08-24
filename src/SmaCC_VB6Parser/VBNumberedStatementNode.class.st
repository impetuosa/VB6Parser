Class {
	#name : #VBNumberedStatementNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'lineNumber',
		'statement'
	],
	#category : #'SmaCC_VB6Parser'
}

{ #category : #generated }
VBNumberedStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumberedStatement: self
]

{ #category : #generated }
VBNumberedStatementNode >> lineNumber [
	^ lineNumber
]

{ #category : #generated }
VBNumberedStatementNode >> lineNumber: aVBIntegerLiteralNode [
	self lineNumber notNil
		ifTrue: [ self lineNumber parent: nil ].
	lineNumber := aVBIntegerLiteralNode.
	self lineNumber notNil
		ifTrue: [ self lineNumber parent: self ]
]

{ #category : #generated }
VBNumberedStatementNode >> nodeVariables [
	^ #(#lineNumber #statement)
]

{ #category : #generated }
VBNumberedStatementNode >> statement [
	^ statement
]

{ #category : #generated }
VBNumberedStatementNode >> statement: aVBProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aVBProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]