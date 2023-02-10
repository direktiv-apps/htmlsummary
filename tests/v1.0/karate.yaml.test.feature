
Feature: Basic

# The secrects can be used in the payload with the following syntax #(mysecretname)
Background:


Scenario: get request

	Given url karate.properties['testURL']

	And path '/'
	And header Direktiv-ActionID = 'development'
	And header Direktiv-TempDir = '/tmp'
	And request
	"""
	{
		"url": "https://www.direktiv.io"
	}
	"""
	When method POST
	Then status 200


Scenario: file
	Given url karate.properties['testURL']

	And path '/'
	And header Direktiv-ActionID = 'development'
	And header Direktiv-TempDir = '/tmp'
	And request
	"""
	{
		"files": [
			{
				"name": "in.html",
				"data": "This is a demo webpage to scan."
			}
		],
		"file": "in.html"
	}
	"""
	When method POST
	Then status 200