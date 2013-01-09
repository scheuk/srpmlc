class SitesController < ApplicationController
  def index
    @sites = current_user.sites.all
  end
  def show
    @site = Sites.find(params[:id])
  end
end
