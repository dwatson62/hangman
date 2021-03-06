describe Game do
  let(:game) { Game.new }

  context '#guess_a_letter' do
    before do
      allow(game).to receive(:word).and_return(Word.new('foobar'))
    end

    it 'letter must be an actual letter' do
      expect(game).to receive(:bad_message)
      game.guess_a_letter(';')
    end

    it 'can only guess one letter at a time' do
      expect(game).to receive(:bad_message)
      game.guess_a_letter('fo')
    end

    it 'solves a letter if guessed correcty' do
      game.guess_a_letter('f')
      expect(game.word.display).to eq 'f_____'
    end

    it 'does not solve a letter if guessed incorrectly' do
      game.guess_a_letter('z')
      expect(game.word.display).to eq '______'
    end

    it 'can solve multiple letters at once' do
      game.guess_a_letter('o')
      expect(game.word.display).to eq '_oo___'
    end
  end
end

