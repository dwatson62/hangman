describe Player do
  let(:player) { Player.new }

  it 'on initialize has a blank history' do
    expect(player.history).to eq []
  end

  it '#update_history adds letter to history' do
    player.update_history('a')
    expect(player.history).to eq ['a']
  end
end
