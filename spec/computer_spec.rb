require 'computer'

describe Computer do

  subject(:computer)  { described_class.new }

  before do
    allow(computer).to receive(:make_random_choice)
  end

  describe '#make_random_choice' do
    it 'should choose either Rock Paper Scissors at random' do
      computer.make_random_choice
      expect(Game::CHOICES).to include{computer.make_random_choice}
    end
   end
end
