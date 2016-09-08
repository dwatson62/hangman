require './lib/word'
require 'byebug'

describe Word do
  let(:word) { Word.new }

  context 'on initialize' do
    it 'creates a letter object for each letter in the word' do
      expect(word.letters.all? { |letter| letter.class == Letter }).to be_truthy
    end

    it 'display returns all letters as hidden' do
      expect(word.display.chars.all? { |letter| letter == '_' }).to be_truthy
    end
  end

  context '#solved?' do
    it 'returns false if word has not been solved' do
      expect(word.solved?).to be_falsey
    end

    it 'returns true if word has been solved' do
      word.letters.each do |letter|
        letter.solve
      end
      expect(word.solved?).to be_truthy
    end
  end
end
