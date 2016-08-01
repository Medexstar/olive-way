class PagesController < ApplicationController
  def beta
  end

  def landing
  end

  def collections
  end

  def collection
    @collection = Suit.collection
  end

  def partner
  end

  def story
  end

  def faq
  end

  def contact_us
  end

  def how
  end

  def privacy
  end

  def ship_return
  end
end
