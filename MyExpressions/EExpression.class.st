"
EExpression class
"
Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'accessing' }
EExpression class >> value: anInteger [
	^ self new value: anInteger 
]

{ #category : 'visiting' }
EExpression >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : 'arithmetic' }
EExpression >> negated [
	^ ENegation new expression: self
]
