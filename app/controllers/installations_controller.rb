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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def installation_params
    params.require(:installation).permit(:name, :description, :address)
  end


end
