'use strict'

promise = new Promise (fulfill, reject) ->
  fulfill 'I FIRED'
  reject new Error 'I DID NOT FIRE'

onRejected = (error) ->
  console.log error.message

promise.then console.log, onRejected
