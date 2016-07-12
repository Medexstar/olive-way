class Ambassador::AmbassadorsController < ApplicationController
  def new
  end

  def create
  end

  def thanks
  end
  
  private

  def ambassador_params
    params.permit(:ambassador).permit(:email, :first_name, :last_name)
  end
end
