var sumsFour = (a) => a + 4;
var subsTwo  = (a) => a - 2;
var multTwo  = (a) => a * 2;

fns = [multTwo, sumsFour, subsTwo];

function compose(f, g) {
  return function(a) {
    return f(g(a));
  };
}

var composedFn = fns.reduceRight(compose);
var result = composedFn(0);
console.log( result );
