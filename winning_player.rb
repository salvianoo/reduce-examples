class Player
  attr_reader :score

  @@all_players = []

  def initialize(name, score)
    @name, @score = name, score
  end

  def self.winner_player(all_players)
    all_players
      .map { |player| player.score }
      .reduce { |max_score, score| score > max_score ? score : max_score }
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

winner = Player.winner_player(Player.all_players)
puts "Best score: #{winner}"
