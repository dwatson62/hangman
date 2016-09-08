require './lib/game'

describe Game do
  let(:game) { Game.new }

  context '#guess_a_letter' do
    before do
      allow(game).to receive(:word).and_return(Word.new('foobar'))
    end

    it 'solves a letter if guessed correcty' do
      game.guess_a_letter('f')
      expect(game.word.display).to eq 'f_____'
    end

    it 'does not solve a letter if guessed incorrectly' do
      game.guess_a_letter('z')
      expect(game.word.display).to eq '______'
    end
  end
end

