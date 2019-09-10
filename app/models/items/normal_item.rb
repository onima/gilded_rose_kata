require_relative '../concerns/items/update_quality_concern'
require_relative '../concerns/items/update_sell_in_concern'
require_relative '../coefficients/normal_item_coefficient'

class NormalItem
  include Items::UpdateSellInConcern
  include Items::UpdateQualityConcern

  attr_reader :item, :coefficient

  def initialize(item:)
    @item = item
    @coefficient = NormalItemCoefficient.new
  end
end
