class InstallationsController < ApplicationController
  def index
    @installations = Installation.all
  end

  def new
    @installation = Installation.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
