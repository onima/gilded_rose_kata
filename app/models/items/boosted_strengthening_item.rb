require_relative '../concerns/items/update_quality_concern'
require_relative '../concerns/items/update_sell_in_concern'
require_relative '../coefficients/boosted_strengthening_item_coefficient'

class BoostedStrengtheningItem
  include Items::UpdateSellInConcern
  include Items::UpdateQualityConcern

  BACKSTAGE_PASS = 'Backstage passes to a TAFKAL80ETC concert'.freeze

  attr_reader :item, :coefficient

  def initialize(item:)
    @item = item
    @coefficient = BoostedStrengtheningItemCoefficient.new(sell_in: item.sell_in)
  end

  def update_quality!
    super
    item.quality = 0 if item.name == BACKSTAGE_PASS && item.sell_in <= 0
  end
end
