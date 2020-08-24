Class {
	#name : #VBFunctionDefinitionNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'functionTokens',
		'selector',
		'parameters',
		'eolTokens',
		'block',
		'endToken',
		'type',
		'modifier',
		'visibility'
	],
	#category : #'SmaCC_VB6Parser'
}

{ #category : #generated }
VBFunctionDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionDefinition: self
]

{ #category : #generated }
VBFunctionDefinitionNode >> block [
	^ block
]

{ #category : #generated }
VBFunctionDefinitionNode >> block: aVBBlockNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aVBBlockNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
VBFunctionDefinitionNode >> compositeTokenVariables [
	^ #(#functionTokens #eolTokens)
]

{ #category : #generated }
VBFunctionDefinitionNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBFunctionDefinitionNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBFunctionDefinitionNode >> eolTokens [
	^ eolTokens
]

{ #category : #generated }
VBFunctionDefinitionNode >> eolTokens: anOrderedCollection [
	eolTokens := anOrderedCollection
]

{ #category : #generated }
VBFunctionDefinitionNode >> functionTokens [
	^ functionTokens
]

{ #category : #generated }
VBFunctionDefinitionNode >> functionTokens: anOrderedCollection [
	functionTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBFunctionDefinitionNode >> initialize [
	super initialize.
	functionTokens := OrderedCollection new: 2.
	eolTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBFunctionDefinitionNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBFunctionDefinitionNode >> modifier: aVBModifierNode [
	self modifier notNil
		ifTrue: [ self modifier parent: nil ].
	modifier := aVBModifierNode.
	self modifier notNil
		ifTrue: [ self modifier parent: self ]
]

{ #category : #generated }
VBFunctionDefinitionNode >> nodeVariables [
	^ #(#selector #parameters #block #type #modifier)
]

{ #category : #generated }
VBFunctionDefinitionNode >> otherVariables [
	^ #(#visibility)
]

{ #category : #generated }
VBFunctionDefinitionNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBFunctionDefinitionNode >> parameters: aVBParameterListNode [
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aVBParameterListNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]
]

{ #category : #generated }
VBFunctionDefinitionNode >> selector [
	^ selector
]

{ #category : #generated }
VBFunctionDefinitionNode >> selector: aVBProgramNode [
	self selector notNil
		ifTrue: [ self selector parent: nil ].
	selector := aVBProgramNode.
	self selector notNil
		ifTrue: [ self selector parent: self ]
]

{ #category : #generated }
VBFunctionDefinitionNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBFunctionDefinitionNode >> type [
	^ type
]

{ #category : #generated }
VBFunctionDefinitionNode >> type: aVBProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBFunctionDefinitionNode >> visibility [
	^ visibility
]

{ #category : #generated }
VBFunctionDefinitionNode >> visibility: anObject [
	visibility := anObject
]