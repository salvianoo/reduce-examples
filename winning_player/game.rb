module Game
  class Player < Struct.new(:name, :score); end

  module Score
    def self.best_player(players)
      compare = ->(p1, p2) { p1.score > p2.score ? p1 : p2 }
      players.reduce(&compare)
    end

    def self.best_score(players)
      players.map(&:score).max
    end
  end
end
