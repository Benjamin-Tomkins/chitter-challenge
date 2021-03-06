require 'peep'


describe Peep do

  describe '#==' do
    it 'matching ids are equivalent' do
      peep_1 = Peep.create(peep: 'peep')
      expect(peep_1).to eq peep_1
    end
  end

  describe '.create' do
    it 'create a new peep' do
      peep = Peep.create(peep: 'my first peep')
      expect(Peep.read).to include peep
    end
  end

  describe '.read' do
    it 'returns all peeps in reverse chronological order' do

      peep_1 = Peep.create(peep: 'peep_1')
      peep_2 = Peep.create(peep: 'peep_2')
      peep_3 = Peep.create(peep: 'peep_3')

      expected_peeps = [
          peep_3,
          peep_2,
          peep_1
      ]

      expect(Peep.read).to eq(expected_peeps)
    end
  end

  describe '.time' do
    it 'returns time a peep was posted in month day format' do
        
      peep = Peep.new(1, 'peep_1', '2018-06-10 10:27:58.348763')
      expect(peep.time).to eq('June 10')

    end
  end

end
