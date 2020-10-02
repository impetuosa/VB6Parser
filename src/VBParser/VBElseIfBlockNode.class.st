Class {
	#name : #VBElseIfBlockNode,
	#superclass : #VBProgramNode,
	#instVars : [
		'elseifToken',
		'condition',
		'thenToken',
		'eolTokens',
		'ifMatch'
	],
	#category : #'VBParser-Nodes'
}

{ #category : #generated }
VBElseIfBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElseIfBlock: self
]

{ #category : #generated }
VBElseIfBlockNode >> compositeTokenVariables [
	^ #(#eolTokens)
]

{ #category : #generated }
VBElseIfBlockNode >> condition [
	^ condition
]

{ #category : #generated }
VBElseIfBlockNode >> condition: anObject [
	self setParent: self condition to: nil.
	condition := anObject.
	self setParent: self condition to: self
]

{ #category : #generated }
VBElseIfBlockNode >> elseifToken [
	^ elseifToken
]

{ #category : #generated }
VBElseIfBlockNode >> elseifToken: aSmaCCToken [
	elseifToken := aSmaCCToken
]

{ #category : #generated }
VBElseIfBlockNode >> eolTokens [
	^ eolTokens
]

{ #category : #generated }
VBElseIfBlockNode >> eolTokens: anOrderedCollection [
	eolTokens := anOrderedCollection
]

{ #category : #generated }
VBElseIfBlockNode >> ifMatch [
	^ ifMatch
]

{ #category : #generated }
VBElseIfBlockNode >> ifMatch: aVBBlockNode [
	self ifMatch notNil
		ifTrue: [ self ifMatch parent: nil ].
	ifMatch := aVBBlockNode.
	self ifMatch notNil
		ifTrue: [ self ifMatch parent: self ]
]

{ #category : #'generated-initialize-release' }
VBElseIfBlockNode >> initialize [
	super initialize.
	eolTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBElseIfBlockNode >> nodeVariables [
	^ #(#ifMatch)
]

{ #category : #generated }
VBElseIfBlockNode >> otherVariables [
	^ #(#condition)
]

{ #category : #generated }
VBElseIfBlockNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
VBElseIfBlockNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
VBElseIfBlockNode >> tokenVariables [
	^ #(#elseifToken #thenToken)
]