require_relative 'legendary_item_kind'
require_relative 'strengthening_item_kind'
require_relative 'boosted_strengthening_item_kind'
require_relative 'conjured_item_kind'
require_relative 'normal_item_kind'

# NormalItemKind must be always the last in the list
# because it will be used as a default value

KINDS_LIST =
  [
    LegendaryItemKind,
    StrengtheningItemKind,
    BoostedStrengtheningItemKind,
    ConjuredItemKind,
    NormalItemKind
  ].freeze
