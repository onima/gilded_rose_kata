require_relative '../../../../app/models/items/normal_item'
require_relative '../../../../gilded_rose'

describe Items::UpdateQualityConcern do
  describe '#update_quality!' do
    context 'when quality value is more than 50' do
      let(:item_with_high_quality_value) { NormalItem.new(item: Item.new('Normal Item', 10, 60)) }

      it 'sets quality value to a max of 50' do
        expect(item_with_high_quality_value.item.quality).to eq(60)
        item_with_high_quality_value.update_quality!
        expect(item_with_high_quality_value.item.quality).to eq(50)
      end
    end

    context 'when quality value is less than 0' do
      let(:item_with_low_quality_value) { NormalItem.new(item: Item.new('Normal Item', 10, -10)) }

      it 'sets quality value to a min of 50' do
        expect(item_with_low_quality_value.item.quality).to eq(-10)
        item_with_low_quality_value.update_quality!
        expect(item_with_low_quality_value.item.quality).to eq(0)
      end
    end

    context 'when quality value is between 50 and 0' do
      let(:item_with_ranged_quality_value) { NormalItem.new(item: Item.new('Normal Item', 10, 10)) }

      it 'updates quality value based on coefficient' do
        expect(item_with_ranged_quality_value.item.quality).to eq(10)
        item_with_ranged_quality_value.update_quality!
        expect(item_with_ranged_quality_value.item.quality).to eq(9)
      end
    end
  end
end
