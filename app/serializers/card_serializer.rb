class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :front, :back, :deck_id, :deck_name
end
