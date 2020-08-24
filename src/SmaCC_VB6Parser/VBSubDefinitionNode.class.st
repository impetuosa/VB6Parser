Class {
	#name : #VBSubDefinitionNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'subTokens',
		'selector',
		'parameters',
		'eolTokens',
		'block',
		'endToken',
		'modifier',
		'visibility'
	],
	#category : #'SmaCC_VB6Parser'
}

{ #category : #generated }
VBSubDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubDefinition: self
]

{ #category : #generated }
VBSubDefinitionNode >> block [
	^ block
]

{ #category : #generated }
VBSubDefinitionNode >> block: aVBBlockNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aVBBlockNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
VBSubDefinitionNode >> compositeTokenVariables [
	^ #(#subTokens #eolTokens)
]

{ #category : #generated }
VBSubDefinitionNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBSubDefinitionNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBSubDefinitionNode >> eolTokens [
	^ eolTokens
]

{ #category : #generated }
VBSubDefinitionNode >> eolTokens: anOrderedCollection [
	eolTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBSubDefinitionNode >> initialize [
	super initialize.
	subTokens := OrderedCollection new: 2.
	eolTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBSubDefinitionNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBSubDefinitionNode >> modifier: aVBModifierNode [
	self modifier notNil
		ifTrue: [ self modifier parent: nil ].
	modifier := aVBModifierNode.
	self modifier notNil
		ifTrue: [ self modifier parent: self ]
]

{ #category : #generated }
VBSubDefinitionNode >> nodeVariables [
	^ #(#selector #parameters #block #modifier)
]

{ #category : #generated }
VBSubDefinitionNode >> otherVariables [
	^ #(#visibility)
]

{ #category : #generated }
VBSubDefinitionNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBSubDefinitionNode >> parameters: aVBParameterListNode [
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aVBParameterListNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]
]

{ #category : #generated }
VBSubDefinitionNode >> selector [
	^ selector
]

{ #category : #generated }
VBSubDefinitionNode >> selector: aVBProgramNode [
	self selector notNil
		ifTrue: [ self selector parent: nil ].
	selector := aVBProgramNode.
	self selector notNil
		ifTrue: [ self selector parent: self ]
]

{ #category : #generated }
VBSubDefinitionNode >> subTokens [
	^ subTokens
]

{ #category : #generated }
VBSubDefinitionNode >> subTokens: anOrderedCollection [
	subTokens := anOrderedCollection
]

{ #category : #generated }
VBSubDefinitionNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBSubDefinitionNode >> visibility [
	^ visibility
]

{ #category : #generated }
VBSubDefinitionNode >> visibility: anObject [
	visibility := anObject
]