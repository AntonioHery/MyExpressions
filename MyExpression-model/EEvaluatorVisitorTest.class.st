Class {
	#name : 'EEvaluatorVisitorTest',
	#superclass : 'TestCase',
	#category : 'MyExpression-model',
	#package : 'MyExpression-model'
}

{ #category : 'tests' }
EEvaluatorVisitorTest >> testVisitAdditionReturnsAdditionResult [

	| expression result |
	expression := EAdd
		              left: (EConstant value: 7)
		              right: (EConstant value: 2).
	result := expression accept: EEvaluatorVisitor new.
	self assert: result equals: 9
]

{ #category : 'tests' }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [

	| constant result |
	constant := EConstant withValue: 5.
	result := constant accept: EEvaluatorVisitor new.
	self assert: result equals: 5
]

{ #category : 'tests' }
EEvaluatorVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [
	|expression result|
		expression := EMultiplication
			left: (EConstant withValue: 2) right:(EConstant withValue: 3).
		result:= expression accept: EEvaluatorVisitor new.
		self assert: result equals: 6 
		 
]

{ #category : 'tests' }
EEvaluatorVisitorTest >> testVisitNegationReturnsNegatedConstant [
	|expression result|
	 expression := (EConstant withValue: 7)negated. 
	result:= expression accept:EEvaluatorVisitor new.
	self assert: result equals: -7
	
]
