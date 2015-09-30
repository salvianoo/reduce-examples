class Player
  attr_reader :score

  @@all_players = []

  def initialize(name, score)
    @name, @score = name, score
  end

  def self.winner_player(all_players)
    compare = ->(p1, p2) { p1.score > p2.score ? p1 : p2 }
    all_players.reduce(&compare)
  end

  def self.best_score(all_players)
    all_players.map(&:score).max
  end

  def self.all_players
    @@all_players
  end

  def self.add_player(player)
    @@all_players << player
  end
end

Player.add_player Player.new('Peter', 7.2)
Player.add_player Player.new('Steve', 8.2)
Player.add_player Player.new('Bruce', 9.2)

score = player.best_score(player.all_players)
puts "best score: #{score}"
