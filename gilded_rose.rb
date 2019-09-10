require_relative 'app/services/items/classify_item'
require_relative 'app/models/items/legendary_item'

class GildedRose
  def self.update_quality(items)
    items.each do |item|
      wrapped_item = ClassifyItem.call(item)
      next if wrapped_item.is_a?(LegendaryItem)
      wrapped_item.update_quality!
      wrapped_item.update_sell_in!
    end
  end
end

# DO NOT CHANGE THINGS BELOW -----------------------------------------

Item = Struct.new(:name, :sell_in, :quality)

# We use the setup in the spec rather than the following for testing.
#
# Items = [
#   Item.new("+5 Dexterity Vest", 10, 20),
#   Item.new("Aged Brie", 2, 0),
#   Item.new("Elixir of the Mongoose", 5, 7),
#   Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
#   Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
#   Item.new("Conjured Mana Cake", 3, 6),
# ]
