class InstallationsController < ApplicationController
  def index
    @installations = Installation.all
  end

end
