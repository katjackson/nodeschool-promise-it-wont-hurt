parsePromised = (json) ->
  return new Promise (fulfill, reject) ->
    try
      fulfill JSON.parse(json)
    catch e
      reject(e)

promise = parsePromised(process.argv[2])

promise
  .then null, console.log
