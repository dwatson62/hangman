describe Letter do
  let(:value) { 'a' }
  let(:letter) { Letter.new(value) }

  it 'is unsolved on initialize' do
    expect(letter.status).to eq :unsolved
  end

  it '#solve changes value to :solved' do
    letter.solve
    expect(letter.status).to eq :solved
  end

  it '#display returns blank if unsolved' do
    expect(letter.display).to eq '_'
  end

  it '#display returns value if solved' do
    letter.solve
    expect(letter.display).to eq value
  end
end
