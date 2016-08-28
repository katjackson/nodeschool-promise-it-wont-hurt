all = (promise1, promise2) ->
  return new Promise (fulfill, reject) ->
    counter = 0
    values = []

    promise1.then (value) ->
      values[0] = value
      ++counter
      fulfill(values) if counter >= 2

    promise2.then  (value) ->
      values[1] = value
      ++counter
      fulfill(values) if counter >= 2
    return true

all getPromise1(), getPromise2()
  .then console.log
