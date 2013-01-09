class Site < ActiveRecord::Base
  attr_accessible :address, :city, :email, :phone, :sitename, :supervisor, :zip
  has_many :children
  has_many :site_records
  has_and_belongs_to_many :users
end
