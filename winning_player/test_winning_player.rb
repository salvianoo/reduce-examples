require "minitest/autorun"
require_relative "score"
require_relative "player"

describe Score do
  before do
    @players = [
      Player.new('Peter', 7.2),
      Player.new('Steve', 8.2),
      Player.new('Bruce', 9.2)
    ]
  end

  it "must return the best score among all the players" do
    Score.best_score(@players).must_equal 9.2
  end

  it "must return the player with the best score" do
    best_player = Player.new('Bruce', 9.2)
    Score.best_player(@players).must_equal best_player
  end
end
