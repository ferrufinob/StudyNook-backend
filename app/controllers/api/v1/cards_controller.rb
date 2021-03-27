class Api::V1::CardsController < ApplicationController
  def show
    card = Card.find_by_id(params[:id])
    render json: CardSerializer.new(card)
  end
end
