require_relative 'kinds/kinds_list'

class ClassifyItem

  attr_reader :name

  def self.call(item)
    # Check if item wrapper exists based on kinds order
    # and will default to normal item as a last resort
    # Ex: kind = StrengtheningItemKind
    # Ex: wrapped_item_class = StrengtheningItemKind.seek_item_class(name: 'Aged Brie')
    # Ex: StrengtheningItem.new(#<struct Item name="Aged Brie", sell_in=2, quality=0>)
    kind = KINDS_LIST.detect { |ik| !ik.seek_item_class(name: item.name).nil? }
    wrapped_item_class = kind.seek_item_class(name: item.name)
    wrapped_item_class.new(item: item)
  end
end
