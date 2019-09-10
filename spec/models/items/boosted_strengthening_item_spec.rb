require_relative '../../../app/models/items/boosted_strengthening_item'
require_relative '../../../gilded_rose'

describe BoostedStrengtheningItem do
  subject { BoostedStrengtheningItem }

  describe '#update_quality' do
    context 'sell_in value is equal 0' do
      context 'when item is a backstage pass' do
        let(:backstage_pass_passed_item) { subject.new(item: Item.new('Backstage passes to a TAFKAL80ETC concert', 0, 40)) }

        it 'sets quality to 0' do
          expect(backstage_pass_passed_item.item.quality).to eq(40)
          backstage_pass_passed_item.update_quality!
          expect(backstage_pass_passed_item.item.quality).to eq(0)
        end
      end

      context 'when item isn\'t a backstage pass' do
        let(:boosted_strengthening_passed_item) { subject.new(item: Item.new('Test', 0, 40)) }

        it 'updates quality as expected from super method' do
          expect(boosted_strengthening_passed_item.item.quality).to eq(40)
          boosted_strengthening_passed_item.update_quality!
          expect(boosted_strengthening_passed_item.item.quality).to eq(42)
        end
      end
    end

    context 'sell_in value is less than 0' do
      context 'when item is a backstage pass' do
        let(:backstage_pass_passed_item) { subject.new(item: Item.new('Backstage passes to a TAFKAL80ETC concert', -10, 40)) }

        it 'sets quality to 0' do
          expect(backstage_pass_passed_item.item.quality).to eq(40)
          backstage_pass_passed_item.update_quality!
          expect(backstage_pass_passed_item.item.quality).to eq(0)
        end
      end

      context 'when item isn\'t a backstage pass' do
        let(:boosted_strengthening_passed_item) { subject.new(item: Item.new('Test', -10, 40)) }

        it 'updates quality as expected from super method' do
          expect(boosted_strengthening_passed_item.item.quality).to eq(40)
          boosted_strengthening_passed_item.update_quality!
          expect(boosted_strengthening_passed_item.item.quality).to eq(42)
        end
      end
    end

    context 'sell_in value is more than 0' do
      context 'when item is a backstage pass' do
        let(:backstage_pass) { subject.new(item: Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 40)) }

        it 'updates quality as expected from super method' do
          expect(backstage_pass.item.quality).to eq(40)
          backstage_pass.update_quality!
          expect(backstage_pass.item.quality).to eq(42)
        end
      end

      context 'when item isn\'t a backstage pass' do
        let(:boosted_strengthening_item) { subject.new(item: Item.new('Test', 10, 40)) }

        it 'updates quality as expected from super method' do
          expect(boosted_strengthening_item.item.quality).to eq(40)
          boosted_strengthening_item.update_quality!
          expect(boosted_strengthening_item.item.quality).to eq(42)
        end
      end
    end
  end
end
