class SitesController < ApplicationController
  def index
    @sites = current_user.sites.all
  end
end
