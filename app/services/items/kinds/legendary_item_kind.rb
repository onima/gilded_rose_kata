require_relative '../../../models/items/legendary_item'

class LegendaryItemKind
  def self.seek_item_class(name:)
    { LegendaryItem => 'Sulfuras, Hand of Ragnaros' }.key(name)
  end
end
