class SiteRecord < ActiveRecord::Base
  belongs_to :site
  belongs_to :user
  attr_accessible :user_id, :site_id, :bd, :br, :date, :ea, :nc, :tc
  validates :date, :uniqueness => {:scope => [:user_id, :site_id], :message => "Can only create one day" }
end
