require 'es6-promise'

goodPromise = Promise.resolve 'all good'

badPromise = Promise.reject new Error 'not good at all'

badPromise.catch( (error) ->
    console.error error.message
  )

# Could not get CoffeeScript to compile .catch into a function call in js
# I had to manually edit the js for this one.
