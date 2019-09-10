require_relative '../concerns/items/update_quality_concern'
require_relative '../concerns/items/update_sell_in_concern'
require_relative '../coefficients/conjured_item_coefficient'

class ConjuredItem
  include Items::UpdateSellInConcern
  include Items::UpdateQualityConcern

  attr_reader :item, :coefficient

  def initialize(item:)
    @item = item
    @coefficient = ConjuredItemCoefficient.new
  end
end
