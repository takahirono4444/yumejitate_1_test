class PicturesController < ApplicationController

  before_action :authenticate_user!


  def show
  @picture = Picture.find(params[:id])
end




end
