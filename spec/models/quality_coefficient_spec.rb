require_relative '../../app/models/quality_coefficient'

describe QualityCoefficient do
  describe '.calcul' do
    let(:coefficient_type) { double(coefficient: -1) }
    subject { QualityCoefficient }

    context 'when sell_in value is less than 0' do
      it 'multiply coefficient by 2' do
        expect(
          subject.calcul(sell_in: -5, coefficient_type: coefficient_type)
        ).to eq(-2)
      end
    end

    context 'when sell_in value is equal to 0' do
      it 'multiply coefficient by 2' do
        expect(
          subject.calcul(sell_in: 0, coefficient_type: coefficient_type)
        ).to eq(-2)
      end
    end

    context 'when sell_in value is superior than 0' do
      it 'doesn\'t multiply coefficient by 2' do
        expect(
          subject.calcul(sell_in: 5, coefficient_type: coefficient_type)
        ).to eq(-1)
      end
    end
  end
end
