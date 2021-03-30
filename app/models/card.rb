class Card < ApplicationRecord
  belongs_to :deck
  validates :front, :back, presence: true

  def deck_name
    self.deck.name
  end
end
