HTTP = require "q-io/http"

HTTP.read('http://localhost:7000')
  .then (value) ->
    HTTP.read "http://localhost:7001/#{value.toString()}"
  .then (value) ->
    console.log JSON.parse(value.toString())
  .then(null, console.error)
  .done()
