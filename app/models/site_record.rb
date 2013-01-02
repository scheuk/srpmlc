class SiteRecord < ActiveRecord::Base
  belongs_to :site
  belongs_to :user
  attr_accessible :bd, :br, :date, :ea, :nc, :tc
end
