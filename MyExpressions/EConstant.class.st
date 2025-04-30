"
Econstant
"
Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'as yet unclassified' }
EConstant class >> constant5 [
	^self new value: 5
]

{ #category : 'initialization' }
EConstant class >> withValue: anInteger [
	^ self new value: anInteger
]

{ #category : 'visiting' }
EConstant >> accept: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : 'public access' }
EConstant >> evaluate [
	^value
]

{ #category : 'initialization' }
EConstant >> initialize [ 
	super initialize.
	value:=1
]

{ #category : 'printing' }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString
]

{ #category : 'accessing' }
EConstant >> value [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [
	value:= anInteger 
	
]
