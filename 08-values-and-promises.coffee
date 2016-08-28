'use strict'

attachTitle = (word) ->
  "DR. #{word}"

Promise.resolve "MANHATTAN"
	.then attachTitle
	.then console.log
