class InstallationsController < ApplicationController
  def index
    @installations = Installation.all
  end

  def new
    @installation = Installation.new
  end

  def create
    Installation.create(installation_params)
    redirect_to root_path
  end

  def show
    @installation = Installation.find(params[:id])
    @image = Image.new
  end

  def edit
    @installation = Installation.find(params[:id])
  end

  def update
    @installation = Installation.find(params[:id])
    @installation.update_attributes(installation_params)
    redirect_to root_path
  end

  def destroy
  end

  private

  def installation_params
    params.require(:installation).permit(:name, :description, :address)
  end


end
