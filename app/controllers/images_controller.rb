class ImagesController < ApplicationController
  def create
    @installation = Installation.find(params[:installation_id])
    @installation.images.create(image_params)
    redirect_to installation_path(@installation)
  end

  private

  def image_params
    params.require(:image).permit(:photo, :caption)
  end
end
