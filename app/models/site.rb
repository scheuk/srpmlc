class Site < ActiveRecord::Base
  attr_accessible :address, :city, :email, :phone, :sitename, :supervisor, :zip
  has_many :children
  has_many :users, :through => :children
end
