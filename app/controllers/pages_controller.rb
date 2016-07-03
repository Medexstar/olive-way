class PagesController < ApplicationController
  def landing
  end

  def mens
    @mens = Suit.male
  end

  def womens
    @womens = Suit.female
  end

  def accessories
    @accessories = Accessory.all
  end

  def collection
  end

  def foundation
  end

  def story
  end

  def account
    if user_signed_in?
      redirect_to root_path
    end
  end
end
