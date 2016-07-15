class Ambassador::AmbassadorsController < ApplicationController
  def new
    @ambassador = Ambassador.new
  end

  def create
    ambassador = Ambassador.new(ambassador_params)

    respond_to do |f|
      if ambassador.save!
        f.json {render json: ambassador}
      else
        f.json {render json: ambassador.errors, status: :unprocessible_entity}
      end
    end
  end

  def thanks
  end

  private

  def ambassador_params
    params.require(:ambassador).permit(:email, :first_name, :last_name, :university,
    :mobile)
  end
end
