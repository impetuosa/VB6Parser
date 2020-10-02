Class {
	#name : #VBSubDefinitionNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'subTokens',
		'selector',
		'eolTokens',
		'block',
		'endToken',
		'parameters',
		'modifier',
		'visibility'
	],
	#category : #'VBParser-Nodes'
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
VBSubDefinitionNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBSubDefinitionNode >> nodeVariables [
	^ #(#block #parameters)
]

{ #category : #generated }
VBSubDefinitionNode >> otherVariables [
	^ #(#selector)
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
VBSubDefinitionNode >> selector: anObject [
	self setParent: self selector to: nil.
	selector := anObject.
	self setParent: self selector to: self
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
	^ #(#endToken #modifier #visibility)
]

{ #category : #generated }
VBSubDefinitionNode >> visibility [
	^ visibility
]

{ #category : #generated }
VBSubDefinitionNode >> visibility: aSmaCCToken [
	visibility := aSmaCCToken
]