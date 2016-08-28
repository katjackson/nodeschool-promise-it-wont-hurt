HTTP = require "q-io/http"

promise = HTTP.read 'http://localhost:1337'

promise
  .then JSON.parse
  .then console.log
