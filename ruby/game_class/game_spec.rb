# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

  it "limits number of guesses based on word length" do
    expect(game.calculate_limit("dog")).to eq 6
  end

  it "checks if the secret word contains a guessed letter" do
    expect(game.check_guess("dog", "d")).to be true
  end

  it "gives players feedback on current state of guessed word" do
    expect(game.track_progress("dog", "d", true, "---")).to eq "d--"
  end

  it "checks if the user has guessed the secret word" do
    expect(game.check_for_victory("dog", "dog")).to be true
  end

  it "sets a default feedback message based on the length of secret word" do 
    expect(game.set_progress_msg("dog")).to eq "---"
  end
end