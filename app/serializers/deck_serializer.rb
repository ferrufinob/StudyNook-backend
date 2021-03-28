class DeckSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :card_count
end
