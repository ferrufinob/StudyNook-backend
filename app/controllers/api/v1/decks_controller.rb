class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.order(:name)
    render json: DeckSerializer.new(decks)
  end
end
