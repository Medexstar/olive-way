class SuitsController < ApplicationController
  def show
    @suit = Suit.find(params[:id])
  end

  def mens
    @mens = Suit.male
  end

  def womens
    @womens = Suit.female
  end
end
