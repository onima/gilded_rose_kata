require_relative '../../../app/services/items/classify_item'
require_relative '../../../gilded_rose'

describe ClassifyItem do
  describe '.call' do
    subject { ClassifyItem }

    context 'when provided name matches a legendary item' do
      let(:legendary_item) { Item.new('Sulfuras, Hand of Ragnaros', 10, 30) }

      it 'wraps item as a legendary item' do
        expect(subject.call(legendary_item).class).to eq(LegendaryItem)
      end
    end

    context 'when provided name matches a strengthening item' do
      let(:strengthening_item) { Item.new('Aged Brie', 10, 30) }

      it 'wraps item as a strengthening item' do
        expect(subject.call(strengthening_item).class).to eq(StrengtheningItem)
      end
    end

    context 'when provided name matches a boosted strengthening item' do
      let(:boosted_strengthening_item) { Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 30) }

      it 'wraps item as a boosted strengthening item' do
        expect(subject.call(boosted_strengthening_item).class).to eq(BoostedStrengtheningItem)
      end
    end

    context 'when provided name matches a conjured item' do
      let(:conjured_item) { Item.new('Conjured Mana Cake', 10, 30) }

      it 'wraps item as a conjured item' do
        expect(subject.call(conjured_item).class).to eq(ConjuredItem)
      end
    end

    context 'when provided name matches none of the specific items' do
      let(:normal_item) { Item.new(('a'..'z').to_a.shuffle[0,8].join, 10, 30) }

      it 'wraps item as a normal item' do
        expect(subject.call(normal_item).class).to eq(NormalItem)
      end
    end
  end
end
