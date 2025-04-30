"
EBinaryExpression
"
Class {
	#name : 'EBinaryExpression',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'visiting' }
EBinaryExpression >> accept: aVisitor [
	self subclassResponsibility 
]

{ #category : 'accessing' }
EBinaryExpression >> left [

	^ left
]

{ #category : 'accessing' }
EBinaryExpression >> left: anObject [

	left := anObject
]

{ #category : 'accessing' }
EBinaryExpression >> operationString [

	^ self subclassResponsibility 
]

{ #category : 'printing' }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operationString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : 'accessing' }
EBinaryExpression >> right [

	^ right
]

{ #category : 'accessing' }
EBinaryExpression >> right: anObject [

	right := anObject
]
