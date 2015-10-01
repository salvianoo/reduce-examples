require "minitest/autorun"
require_relative "game"

describe Game do
  before do
    @players = [
      Game::Player.new('Peter', 7.2),
      Game::Player.new('Steve', 8.2),
      Game::Player.new('Bruce', 9.2)
    ]
  end

  it "must return the best score among all the players" do
    Game::Score.best_score(@players).must_equal 9.2
  end

  it "must return the player with the best score" do
    best_player = Game::Player.new('Bruce', 9.2)
    Game::Score.best_player(@players).must_equal best_player
  end
end
