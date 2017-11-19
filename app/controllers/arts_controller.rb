class ArtsController < ApplicationController
  def index
    @art = Art.new
    @arts = Art.order("RANDOM()").limit(1)
  end

  def create
    @art = Art.create(art_params)
  end

  private

  def art_params
    params.require(:art).permit(:title, :artwork, :artist)
  end
end
