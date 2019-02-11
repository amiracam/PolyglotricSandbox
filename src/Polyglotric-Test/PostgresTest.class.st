Class {
	#name : #PostgresTest,
	#superclass : #TestCase,
	#instVars : [
		'url'
	],
	#category : #'Polyglotric-Test'
}

{ #category : #running }
PostgresTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	url := 'psql://TEST_TBOCMI_ADMIN1:ADMIN1@192.168.40.106:5432/TEST_TBOCMI'
]

{ #category : #tests }
PostgresTest >> testLongerQuery [
	| response time sql |
	"'psql://username:password@localhost:5432/databasename'"
	sql := 'select * from tb_acct_mbscc where mbscc_id = ''LORD'' '.
	time := Time
		millisecondsToRun: [ response := (P3Client new
				url: url)
				in: [ :client | 
					[ client query: sql ]
						ensure: [ client close ]
					]
			].
	Transcript
		show: 'Time to run query: ' , sql , ' = ' , time printString;
		cr
]

{ #category : #tests }
PostgresTest >> testQuery [
	| response time |
	"'psql://username:password@localhost:5432/databasename'"
	time := Time
		millisecondsToRun: [ response := (P3Client new
				url: url)
				in: [ :client | 
					[ client query: 'SELECT * FROM TB_USERS' ]
						ensure: [ client close ]
					]
			].
	Transcript
		show:
			'Time to run query: ' , 'SELECT * FROM table1' , ' = '
				, time printString;
		cr
]
