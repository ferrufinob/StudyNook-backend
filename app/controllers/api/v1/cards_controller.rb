class Api::V1::CardsController < ApplicationController
  def show
    card = Card.find_by_id(params[:id])
    render json: CardSerializer.new(card)
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: CardSerializer.new(card)
    else
      render json: { error: card.errors.full_messages }
    end
  end

  private

  def card_params
    params.require(:card).permit(:front, :back, :deck_id)
  end
end