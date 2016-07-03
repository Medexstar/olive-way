class SuitsController < ApplicationController
  def show
    @suit = Suit.find(params[:id])
  end
end
