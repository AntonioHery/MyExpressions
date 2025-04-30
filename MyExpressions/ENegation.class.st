"
ENegation
"
Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'as yet unclassified' }
ENegation class >> withNeg: anExpression [
	^ self new expression: anExpression
]

{ #category : 'visiting' }
ENegation >> accept: aVisitor [
	^ aVisitor visitNeg: self
	
]

{ #category : 'public access' }
ENegation >> evaluate [
	^ (expression evaluate) negated 
]

{ #category : 'accessing' }
ENegation >> expression [

	^ expression
]

{ #category : 'accessing' }
ENegation >> expression: anExpression [

	expression := anExpression 
]

{ #category : 'printing' }
ENegation >> printOn: aStream [
	aStream nextPutAll: '-'.
	expression printOn: aStream 
]
