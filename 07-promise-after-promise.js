// Generated by CoffeeScript 1.10.0
(function() {
  var firstPromise, secondPromise;

  firstPromise = first();

  secondPromise = firstPromise.then(function(value) {
    return second(value);
  });

  secondPromise.then(console.log);

}).call(this);
