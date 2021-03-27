class Api::V1::DecksController < ApplicationController
  def index
    deck = Deck.order(:name)
    render json: deck
  end
end
