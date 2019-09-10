require_relative '../../../../app/models/items/normal_item'
require_relative '../../../../gilded_rose'

describe Items::UpdateSellInConcern do
  let(:normal_item) { NormalItem.new(item: Item.new('Normal Item', 10, 30))}

  describe '#update_sell_in!' do
    it 'substracts 1 to sell_in value' do
      expect(normal_item.item.sell_in).to eq(10)
      normal_item.update_sell_in!
      expect(normal_item.item.sell_in).to eq(9)
    end
  end
end
