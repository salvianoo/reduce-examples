var sumsFour = (a) => a + 4;

Array.prototype.mep = function mep(func) {
  return this.reduce(function(acc, val) {
    return acc.concat(func(val));
  }, []);
};

[1,2,3,4].mep(sumsFour);

