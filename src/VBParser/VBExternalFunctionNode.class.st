Class {
	#name : #VBExternalFunctionNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'declareToken',
		'functionToken',
		'selector',
		'libToken',
		'library',
		'parameters',
		'type',
		'aliasToken',
		'alias',
		'visibility'
	],
	#category : #'VBParser-Nodes'
}

{ #category : #generated }
VBExternalFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternalFunction: self
]

{ #category : #generated }
VBExternalFunctionNode >> alias [
	^ alias
]

{ #category : #generated }
VBExternalFunctionNode >> alias: aVBStringLiteralNode [
	self alias notNil
		ifTrue: [ self alias parent: nil ].
	alias := aVBStringLiteralNode.
	self alias notNil
		ifTrue: [ self alias parent: self ]
]

{ #category : #generated }
VBExternalFunctionNode >> aliasToken [
	^ aliasToken
]

{ #category : #generated }
VBExternalFunctionNode >> aliasToken: aSmaCCToken [
	aliasToken := aSmaCCToken
]

{ #category : #generated }
VBExternalFunctionNode >> declareToken [
	^ declareToken
]

{ #category : #generated }
VBExternalFunctionNode >> declareToken: aSmaCCToken [
	declareToken := aSmaCCToken
]

{ #category : #generated }
VBExternalFunctionNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
VBExternalFunctionNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #generated }
VBExternalFunctionNode >> libToken [
	^ libToken
]

{ #category : #generated }
VBExternalFunctionNode >> libToken: aSmaCCToken [
	libToken := aSmaCCToken
]

{ #category : #generated }
VBExternalFunctionNode >> library [
	^ library
]

{ #category : #generated }
VBExternalFunctionNode >> library: aVBStringLiteralNode [
	self library notNil
		ifTrue: [ self library parent: nil ].
	library := aVBStringLiteralNode.
	self library notNil
		ifTrue: [ self library parent: self ]
]

{ #category : #generated }
VBExternalFunctionNode >> nodeVariables [
	^ #(#library #parameters #type #alias)
]

{ #category : #generated }
VBExternalFunctionNode >> otherVariables [
	^ #(#selector)
]

{ #category : #generated }
VBExternalFunctionNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBExternalFunctionNode >> parameters: aVBParameterListNode [
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aVBParameterListNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]
]

{ #category : #generated }
VBExternalFunctionNode >> selector [
	^ selector
]

{ #category : #generated }
VBExternalFunctionNode >> selector: anObject [
	self setParent: self selector to: nil.
	selector := anObject.
	self setParent: self selector to: self
]

{ #category : #generated }
VBExternalFunctionNode >> tokenVariables [
	^ #(#declareToken #functionToken #libToken #aliasToken #visibility)
]

{ #category : #generated }
VBExternalFunctionNode >> type [
	^ type
]

{ #category : #generated }
VBExternalFunctionNode >> type: aVBProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBExternalFunctionNode >> visibility [
	^ visibility
]

{ #category : #generated }
VBExternalFunctionNode >> visibility: aSmaCCToken [
	visibility := aSmaCCToken
]