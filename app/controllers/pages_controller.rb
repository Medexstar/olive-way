class PagesController < ApplicationController
  def beta
  end

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

  def collections
  end

  def collection
    @collection = Suit.collection
  end

  def foundation
  end

  def story
  end

  def account
    redirect_to landing_path if user_signed_in?
  end

  def account_hub
  end
  
  def faq
  end

  def guarantee
  end

  def how
  end

  def privacy
  end

  def ship_return
  end
end
