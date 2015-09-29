// The problem
//
// Get the player with greater score
var players = [
  {name: 'Steve', score: 6.2},
  {name: 'Bruce', score: 7.2},
  {name: 'Peter', score: 5.4},
];

function compareScore(p1, p2) {
  return (p1.score > p2.score) ? p1 : p2;
}

// Imperative style
var greater = players[0];
for (var i = 1; i < players.length; i++) {
  greater = compareScore(players[i], greater);
}
console.log( greater );

// Functional style
var winningPlayer = players.reduce(compareScore);
console.log( winningPlayer );
