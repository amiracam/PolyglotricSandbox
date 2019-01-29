Class {
	#name : #ObjectA,
	#superclass : #Object,
	#instVars : [
		'age'
	],
	#category : #'Polyglotric-Test'
}

{ #category : #greetings }
ObjectA >> bye [
	"comment stating purpose of message"

	
	^ 'good nite'
]

{ #category : #greetings }
ObjectA >> helloWorld [
	^ 'hello'
]
