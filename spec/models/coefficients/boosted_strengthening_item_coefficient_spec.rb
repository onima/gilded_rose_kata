require_relative '../../../app/models/coefficients/boosted_strengthening_item_coefficient'

describe BoostedStrengtheningItemCoefficient do
  describe '#coefficient' do
    subject { BoostedStrengtheningItemCoefficient }

    context 'when sell_in more than 10' do
      it 'returns a coefficient of 1' do
        expect(subject.new(sell_in: 11).coefficient).to eq(1)
      end
    end

    context 'when sell_in more than 5' do
      it 'returns a coefficient of 2' do
        expect(subject.new(sell_in: 6).coefficient).to eq(2)
      end
    end

    context 'when sell_in more than 0' do
      it 'returns a coefficient of 3' do
        expect(subject.new(sell_in: 1).coefficient).to eq(3)
      end
    end
  end
end
